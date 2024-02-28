import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  }

  LessonLoadedState _loaded = const LessonLoadedState();

  FutureOr<void> _load(LessonLoadEvent event, Emitter<LessonState> emit) async {
    if (state is! LessonsLoadingState) {
      emit(const LessonState.loading());
    }
    try {
      final lessons = event.courseId != -1
          ? await _repository.lessonsByCourse(event.courseId)
          : List<Lesson>.empty(growable: true);
      _loaded = _loaded.copyWith(lessons: lessons);
      emit(_loaded);
    } catch (e, stack) {
      emit(const LessonState.error('Нет подключения к интернету'));
    }
  }

  FutureOr<void> _addLesson(LessonAddEvent event, Emitter<LessonState> emit) async {
    try {
      if (event.courseId != -1) {
        await _repository.addLesson(event.courseId, event.lesson);
        add(LessonEvent.load(courseId: event.courseId));
      } else {
        final lessons = _loaded.lessons.toList(growable: true);
        lessons.add(event.lesson);
        _loaded = _loaded.copyWith(lessons: lessons);
        emit(_loaded);
      }
    } catch (e, stack) {
      debugPrint('err $e');
    }
  }
}
