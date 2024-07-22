import 'dart:async';
import 'dart:convert';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';

import '../../../../core/model/answer/answer.dart';
import '../../../../core/model/course/course.dart';
import '../../../../core/model/lesson/lesson.dart';
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
  Talker talker = GetIt.I<Talker>();

  TasksBloc(
      {required this.lessonsRepository,
      required this.tasksRepository,
      required this.storageRepository})
      : super(const TasksState.loading()) {
    on<TasksAddEvent>(_add);
    on<TasksStreamEvent>(_tasksStream, transformer: restartable());
    on<TasksRemoveEvent>(_remove);
    on<TasksUpdateEvent>(_update);
    on<ChangeFieldsEditableTasksEvent>(_changeFieldsEditable);
    on<UpdateAnswerTasksEvent>(_updateAnswer);
  }

  var _loaded = const TasksStateLoaded();

  FutureOr<void> _add(TasksAddEvent event, Emitter<TasksState> emit) async {
    try {
      final task = await tasksRepository.addTask(event.lesson.id, event.task.toDto());
      final answers = await tasksRepository.addAnswers(task);
      Talker().info('added task $task answers = $answers');
      event.onSuccess?.call(task.toDomain(), answers);
    } catch (e, s) {
      talker.handle(e, s, 'smth wrong in insert task');
      event.onError?.call(e);
    }
  }

  FutureOr<void> _remove(
      TasksRemoveEvent event, Emitter<TasksState> emit) async {
    try {
      await tasksRepository.deleteTask(
          _loaded.tasks.first.lessonId, event.taskId);
    } on Exception catch (e, s) {
      talker.handle(e, s);
    }
    // add(TasksEvent.load(lesson: _loaded.lesson));
  }

  FutureOr<void> _update(
      TasksUpdateEvent event, Emitter<TasksState> emit) async {
    try {
      await tasksRepository.updateTask(event.task.toDto());
    } on Exception catch (e, s) {
      talker.handle(e, s);
    }
  }

  FutureOr<void> _changeFieldsEditable(
      ChangeFieldsEditableTasksEvent event, Emitter<TasksState> emit) {
    _loaded = _loaded.copyWith(isTitleEditable: !_loaded.isTitleEditable);
    emit(_loaded);
  }

  FutureOr<void> _tasksStream(
      TasksStreamEvent event, Emitter<TasksState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final course = Course.fromJson(json.decode(prefs.getString('course')!));
    emit.forEach(tasksRepository.lessonTasksStream(event.lesson.id),
        onData: (tasks) {
      _loaded = _loaded.copyWith(
          course: course,
          lesson: event.lesson,
          tasks: tasks.map((task) => task.toDomain()).toList());
      return _loaded;
    }, onError: (error, stackTrace) {
      return TasksState.error(message: error.toString());
    });
  }

  FutureOr<void> _updateAnswer(
      UpdateAnswerTasksEvent event, Emitter<TasksState> emit) async {
    try {
      var answer = event.answer;
      if (event.image case final image?) {
        Talker().debug('Image is not null and should be upload');
        final uploadImagePath = await storageRepository.uploadFile('pictures', image);
        answer = answer.copyWith(imageUrl: uploadImagePath);
        Talker().debug('image upload by path = $uploadImagePath');
      }
      if (event.audio case final audio?) {
        Talker().debug('Audio is not null and should be upload');
        final uploadAudioPath = await storageRepository.uploadFile('sounds', audio);
        answer = answer.copyWith(soundUrl: uploadAudioPath);
        Talker().debug('Audio upload by path = $uploadAudioPath');
      }
      Talker().debug('final answer is $answer');
      await tasksRepository.updateAnswer(answer, event.taskId);
    } on Exception catch (e, s) {
      // emit(TasksState.error(message: e.toString()));
      talker.handle(e, s);
    }
  }
}
