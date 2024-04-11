import 'dart:async';
import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teacher_client/features/lessons/domain/model/lesson.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';

import '../../../../core/model/answer.dart';
import '../../../../core/model/lesson.dart';
import '../../../../core/model/task.dart';
import '../../../../core/repository/storage_repository.dart';
import '../../../lessons/domain/repository/lessons_repository.dart';
import '../model/task.dart';
import '../repository/tasks_repository.dart';
import 'package:collection/collection.dart';

part 'tasks_event.dart';

part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TasksRepository tasksRepository;
  final LessonsRepository lessonsRepository;
  final StorageRepository storageRepository;

  TasksBloc(
      {required this.lessonsRepository,
      required this.tasksRepository,
      required this.storageRepository})
      : super(const TasksState.loading()) {
    on<TasksLoadEvent>(_load);
    on<TasksRemoveEvent>(_remove);
    on<TasksSetLessonEvent>(_setLesson);
    on<RemoveAnswersFromTaskEvent>(_removeAnswersFromTask);
    on<TasksUpsertEvent>(_upsertTask);
  }

  var _loaded = const TasksStateLoaded();

  FutureOr<void> _load(TasksLoadEvent event, Emitter<TasksState> emit) async {
    if (state is! TasksStateLoading) {
      emit(const TasksState.loading());
    }
    try {
      final tasksByLesson = await tasksRepository.lessonTasks(event.lesson.id!);
      _loaded = _loaded.copyWith(
          lesson: event.lesson,
          tasks: tasksByLesson.map((task) => task.toDomain()).toList());
      emit(_loaded);
    } on Exception catch (e, s) {
      emit(TasksState.error(message: 'Error $e'));
      debugPrint('Error is $e');
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _upsertTask(TasksUpsertEvent event, Emitter<TasksState> emit) async {
    try {
      final answers = await Stream.fromIterable(event.task.answerModels).asyncMap((answerModel) async {
        if (answerModel.imageFilePickerResult != null) {
          final imageUrl = await storageRepository.uploadFile(
              'pictures', answerModel.imageFilePickerResult!);
          answerModel = answerModel.copyWith(
              answer: answerModel.answer.copyWith(imageUrl: imageUrl));
          debugPrint('image url = $imageUrl');
        }

        if (answerModel.audioFilePickerResult != null) {
          final audioUrl = await storageRepository.uploadFile(
              'sounds', answerModel.audioFilePickerResult!);
          answerModel = answerModel.copyWith(
              answer: answerModel.answer.copyWith(soundUrl: audioUrl));
          debugPrint('audio url = $audioUrl');
        }
        return answerModel;
      }).toList();
      final task = event.task.copyWith(answerModels: answers, lessonId: _loaded.lesson.id);
      await tasksRepository.upsertTask(task.toDto());
    } catch(e, s) {
      debugPrint('Errorrr: $e');
      debugPrintStack(stackTrace: s);
    }

  }

  FutureOr<void> _remove(
      TasksRemoveEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteTask(
        _loaded.tasks.first.lessonId, event.taskId);
    add(TasksEvent.load(lesson: _loaded.lesson));
  }

  FutureOr<void> _setLesson(
      TasksSetLessonEvent event, Emitter<TasksState> emit) async {
    _loaded = _loaded.copyWith(lesson: event.lesson);
    emit(_loaded);
  }

  FutureOr<void> _removeAnswersFromTask(
      RemoveAnswersFromTaskEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteAnswersFromTask(event.task);
  }


}
