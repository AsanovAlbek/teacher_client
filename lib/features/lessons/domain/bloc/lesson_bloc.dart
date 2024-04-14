import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/course.dart';
import '../../../../core/model/lesson.dart';
import '../repository/lessons_repository.dart';

part 'lesson_event.dart';

part 'lesson_state.dart';

part 'lesson_bloc.freezed.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonsRepository _repository;

  LessonBloc({required LessonsRepository repository})
      : _repository = repository,
        super(const LessonState.loading()) {
    on<LessonLoadEvent>(_load);
    on<LessonAddEvent>(_addLesson);
    on<LessonDeleteEvent>(_deleteLesson);
    on<LessonUpdateEvent>(_updateLesson);
  }

  LessonLoadedState _loaded = const LessonLoadedState();

  FutureOr<void> _load(LessonLoadEvent event, Emitter<LessonState> emit) async {
    if (state is! LessonsLoadingState) {
      emit(const LessonState.loading());
    }
    try {
      final lessons = await _repository.lessonsByCourse(event.courseId);
      _loaded = _loaded.copyWith(lessons: lessons);
      emit(_loaded);
    } catch (e, stack) {
      emit(const LessonState.error('Нет подключения к интернету'));
    }
  }

  FutureOr<void> _addLesson(LessonAddEvent event, Emitter<LessonState> emit) async {
    try {
      final lesson = await _repository.addLesson(event.courseId, event.lesson.copyWith(courseId: event.courseId));
      debugPrint('new lesson = $lesson');
      add(LessonEvent.load(courseId: event.courseId));
      event.onSuccess?.call(lesson);
    } on Exception catch (e, stack) {
      debugPrint('err $e');
      event.onError?.call(e);
    }
  }

  FutureOr<void> _deleteLesson(LessonDeleteEvent event, Emitter<LessonState> emit) async {
    try {
      await _repository.deleteLesson(event.lesson);
    } catch(e) {
      debugPrint(e.toString());
    }
  }

  FutureOr<void> _updateLesson(LessonUpdateEvent event, Emitter<LessonState> emit) async {
    try {
      final lesson = await _repository.updateLesson(event.courseId, event.lesson);
      add(LessonEvent.load(courseId: event.courseId));
      event.onSuccess?.call(lesson);
    } on Exception catch(e) {
      debugPrint(e.toString());
      event.onError?.call(e);
    }
  }
}
