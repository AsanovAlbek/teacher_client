import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';

import '../../../../core/model/answer.dart';
import '../../../../core/model/course.dart';
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
  Talker talker = Talker();

  TasksBloc({required this.lessonsRepository, required this.tasksRepository, required this.storageRepository})
      : super(const TasksState.loading()) {
    on<TasksAddEvent>(_add);
    on<TasksLoadEvent>(_load);
    on<TasksRemoveEvent>(_remove);
    on<TasksUpdateEvent>(_update);
    on<TasksSetEvent>(_setTask);
    on<TasksCreateLessonEvent>(_createLesson);
    on<TasksSetLessonEvent>(_setLesson);
    on<RemoveAnswersFromTaskEvent>(_removeAnswersFromTask);
  }

  var _loaded = const TasksStateLoaded();

  FutureOr<void> _add(TasksAddEvent event, Emitter<TasksState> emit) async {
    try {
      final answersFeatures = event.task.answerModels.map((answerModel) async {
        if (answerModel.imageFilePickerResult != null) {
          final imageUrl = await storageRepository.uploadFile('pictures', answerModel.imageFilePickerResult!);
          answerModel = answerModel.copyWith(answer: answerModel.answer.copyWith(imageUrl: imageUrl));
        }
        if (answerModel.audioFilePickerResult != null) {
          final audioUrl = await storageRepository.uploadFile('sounds', answerModel.audioFilePickerResult!);
          answerModel = answerModel.copyWith(answer: answerModel.answer.copyWith(soundUrl: audioUrl));
        }
        talker.debug("""
          answer imgUrl = ${answerModel.answer.imageUrl}
          answer audioUrl = ${answerModel.answer.soundUrl}
        """);
        return answerModel.answer;
      }).toList();
      final answers = [for (var answerFuture in answersFeatures) await answerFuture];
      final task = await tasksRepository.addTask(event.lesson.id, event.task.toDto());
      final insertedAnswers = await tasksRepository.addAnswers(answers, task.id);
      add(TasksEvent.load(lesson: event.lesson));
      event.onSuccess?.call(task.toDomain(), insertedAnswers);
    } catch (e, stack) {
      talker.handle(e, stack, 'Error when add task');
      event.onError?.call(e);
    }
  }

  FutureOr<void> _load(TasksLoadEvent event, Emitter<TasksState> emit) async {
    if (state is! TasksStateLoading) {
      emit(const TasksState.loading());
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final course = Course.fromJson(json.decode(prefs.getString('course')!));
      final lesson = Lesson.fromJson(json.decode(prefs.getString('lesson')!));
      final tasksByLesson = await tasksRepository.lessonTasks(lesson.id);
      _loaded = _loaded.copyWith(
          course: course, lesson: lesson, tasks: tasksByLesson.map((task) => task.toDomain()).toList());
      emit(_loaded);
      debugPrint(_loaded.tasks.join());
    } on Exception catch (e, s) {
      emit(TasksState.error(message: 'Error $e'));
      debugPrint('Error is $e');
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _remove(TasksRemoveEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteTask(_loaded.tasks.first.lessonId, event.taskId);
    add(TasksEvent.load(lesson: _loaded.lesson));
  }

  FutureOr<void> _update(TasksUpdateEvent event, Emitter<TasksState> emit) async {
    try {
      final answersFeatures = event.task.answerModels.map((answerModel) async {
        var model = answerModel;
        if (model.imageFilePickerResult != null) {
          final imageUrl = await storageRepository.uploadFile('pictures', model.imageFilePickerResult!);
          model = model.copyWith(answer: model.answer.copyWith(imageUrl: imageUrl));
        }
        if (model.audioFilePickerResult != null) {
          final audioUrl = await storageRepository.uploadFile('sounds', model.audioFilePickerResult!);
          model = model.copyWith(answer: model.answer.copyWith(soundUrl: audioUrl));
        }
        talker.debug("""
          answer imgUrl = ${model.answer.imageUrl}
          answer audioUrl = ${model.answer.soundUrl}
        """);
        return model.answer;
      }).toList();
      final answers = [for (var answerFeature in answersFeatures) await answerFeature];
      await tasksRepository.updateTask(event.task.toDto());
      await tasksRepository.updateAnswers(answers, event.task.id);
      add(TasksEvent.load(lesson: _loaded.lesson));
    } catch (e, stack) {
      event.onError?.call(e);
      talker.handle(e, stack, 'Error when update task');
    }
  }

  FutureOr<void> _setTask(TasksSetEvent event, Emitter<TasksState> emit) {
    talker.debug('set task id ${event.task.id}');
    final int taskIndex = _loaded.tasks.indexWhere((task) => task.id == event.task.id);
    List<TaskModel> tasks = _loaded.tasks.toList(growable: true);
    tasks[taskIndex] = event.task;
    _loaded = _loaded.copyWith(tasks: tasks);
    emit(_loaded);
  }

  FutureOr<void> _createLesson(TasksCreateLessonEvent event, Emitter<TasksState> emit) {
    _loaded = _loaded.copyWith(lesson: event.lesson, tasks: List.empty(growable: true));
    emit(_loaded);
  }

  FutureOr<void> _setLesson(TasksSetLessonEvent event, Emitter<TasksState> emit) {
    _loaded = _loaded.copyWith(lesson: event.lesson);
    emit(_loaded);
  }

  FutureOr<void> _removeAnswersFromTask(RemoveAnswersFromTaskEvent event, Emitter<TasksState> emit) async {
    await tasksRepository.deleteAnswersFromTask(event.task);
  }
}
