import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';

import '../../../../core/model/answer.dart';
import '../../../../core/model/lesson.dart';
import '../../../../core/model/task.dart';
import '../../../../core/repository/storage_repository.dart';
import '../../../lessons/domain/repository/lessons_repository.dart';
import '../model/task.dart';
import '../repository/tasks_repository.dart';

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
    on<TasksAddEvent>(_add);
    on<TasksLoadEvent>(_load);
    on<TasksRemoveEvent>(_remove);
    on<TasksUpdateEvent>(_update);
    on<TasksSetEvent>(_setTask);
    on<TasksSaveEvent>(_saveTasks);
    on<TasksCreateLessonEvent>(_createLesson);
    on<TasksSetLessonEvent>(_setLesson);
    on<RemoveAnswersFromTaskEvent>(_removeAnswersFromTask);
  }

  var _loaded = const TasksStateLoaded();

  FutureOr<void> _add(TasksAddEvent event, Emitter<TasksState> emit) async {
    _loaded = _loaded.copyWith(tasks: [..._loaded.tasks, event.task]);
    emit(_loaded);
  }

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

  FutureOr<void> _remove(
      TasksRemoveEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteTask(
        _loaded.tasks.first.lessonId, event.taskId);
    add(TasksEvent.load(lesson: _loaded.lesson));
  }

  FutureOr<void> _update(
      TasksUpdateEvent event, Emitter<TasksState> emit) async {}

  FutureOr<void> _setTask(TasksSetEvent event, Emitter<TasksState> emit) {
    final int taskIndex =
        _loaded.tasks.indexWhere((task) => task.id == event.task.id);
    List<TaskModel> tasks = _loaded.tasks.toList(growable: true);
    tasks[taskIndex] = event.task;
    _loaded = _loaded.copyWith(tasks: tasks);
    emit(_loaded);
  }

  FutureOr<void> _saveTasks(
      TasksSaveEvent event, Emitter<TasksState> emit) async {
    if (state is! TasksStateLoading) {
      emit(const TasksState.loading());
    }
    try {
      final processedTasks = _loaded.tasks.map((taskModel) async {
        final taskAnswersFeatures =
            taskModel.answerModels.map((answerModel) async {
          var answer = answerModel.answer;
          _upsertImage(answerModel, (updatedAnswer) => answer = updatedAnswer);
          _upsertAudio(answerModel, (updatedAnswer) => answer = updatedAnswer);
          return answer;
        }).toList();
        final taskAnswers = [
          for (final answerFeature in taskAnswersFeatures) await answerFeature
        ];
        return taskModel.toDto().copyWith(taskAnswers: taskAnswers);
      }).toList();
      final tasks = [for (var task in processedTasks) await task];
      await tasksRepository
          .addAllTasks(_loaded.lesson, tasks);
      //add(TasksEvent.load(lesson: _loaded.lesson));
      emit(_loaded);
    } catch (e) {
      debugPrint('error $e');
    }
  }

  FutureOr<void> _createLesson(
      TasksCreateLessonEvent event, Emitter<TasksState> emit) {
    _loaded = _loaded.copyWith(
        lesson: event.lesson, tasks: List.empty(growable: true));
    emit(_loaded);
  }

  FutureOr<void> _setLesson(
      TasksSetLessonEvent event, Emitter<TasksState> emit) {
    _loaded = _loaded.copyWith(lesson: event.lesson);
    emit(_loaded);
  }

  Future<void> _upsertImage(AnswerModel answerModel, Function(Answer) updateAnswer) async {
    if (answerModel.imageFilePickerResult != null) {
      // if (answerModel.answer.imageUrl.trim().isNotEmpty) {
      //   final updatedImageUrl = await storageRepository.updateFile(
      //       'pictures',
      //       answerModel.imageFilePickerResult!,
      //       answerModel.answer.imageUrl);
      //   debugPrint('updated image url = $updatedImageUrl');
      // } else {
      //   final imageUrl = await storageRepository.uploadFile(
      //       'pictures', answerModel.imageFilePickerResult!);
      //   updateAnswer(answerModel.answer.copyWith(imageUrl: imageUrl));
      //   debugPrint('image url = $imageUrl');
      // }
      final imageUrl = await storageRepository.uploadFile(
          'pictures', answerModel.imageFilePickerResult!);
      updateAnswer(answerModel.answer.copyWith(imageUrl: imageUrl));
      debugPrint('image url = $imageUrl');
    }
  }

  Future<void> _upsertAudio(AnswerModel answerModel, Function(Answer) updateAnswer) async {
    if (answerModel.audioFilePickerResult != null) {
      // if (answerModel.answer.soundUrl.trim().isNotEmpty) {
      //   final updatedAudioUrl = await storageRepository.updateFile(
      //       'sounds',
      //       answerModel.audioFilePickerResult!,
      //       answerModel.answer.soundUrl);
      //   debugPrint('updated audio url = $updatedAudioUrl');
      // }
      // final audioUrl = await storageRepository.uploadFile(
      //     'sounds', answerModel.audioFilePickerResult!);
      // updateAnswer(answerModel.answer.copyWith(soundUrl: audioUrl));
      // debugPrint('audio url = $audioUrl');
      final audioUrl = await storageRepository.uploadFile(
          'sounds', answerModel.audioFilePickerResult!);
      updateAnswer(answerModel.answer.copyWith(soundUrl: audioUrl));
      debugPrint('audio url = $audioUrl');
    }
  }

  FutureOr<void> _removeAnswersFromTask(RemoveAnswersFromTaskEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteAnswersFromTask(event.task);
  }
}
