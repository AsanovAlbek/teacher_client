import 'dart:async';
import 'dart:convert';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';

import '../../../../core/model/course/course.dart';
import '../../../../core/model/lesson/lesson.dart';
import '../repository/lessons_repository.dart';

part 'lesson_event.dart';

part 'lesson_state.dart';

part 'lesson_bloc.freezed.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonsRepository _repository;
  final StorageRepository _storageRepository;

  LessonBloc(
      {required LessonsRepository repository,
      required StorageRepository storageRepository})
      : _repository = repository,
        _storageRepository = storageRepository,
        super(const LessonState.loading()) {
    on<LessonLoadEvent>(_load);
    on<LessonsStreamEvent>(_lessonsStream, transformer: restartable());
    on<LessonAddEvent>(_addLesson);
    on<LessonDeleteEvent>(_deleteLesson);
    on<LessonUpdateEvent>(_updateLesson);
    on<LessonUpdateImageEvent>(_updateImage);
    on<ChangeFieldsEditableLessonEvent>(_changeFieldsEditable);
  }

  LessonLoadedState _loaded = const LessonLoadedState();

  FutureOr<void> _load(LessonLoadEvent event, Emitter<LessonState> emit) async {
    if (state is! LessonsLoadingState) {
      emit(const LessonState.loading());
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final course = Course.fromJson(json.decode(prefs.getString('course')!));
      final lessons = await _repository.lessonsByCourse(course.id);
      _loaded = _loaded.copyWith(course: course, lessons: lessons);
      emit(_loaded);
    } catch (e) {
      emit(const LessonState.error('Нет подключения к интернету'));
    }
  }

  FutureOr<void> _addLesson(
      LessonAddEvent event, Emitter<LessonState> emit) async {
    try {
      Lesson lesson = event.lesson;
      if (event.filePickerResult != null) {
        final lessonImageUrl = await _storageRepository.uploadFile('lessons_images', event.filePickerResult!);
        lesson = lesson.copyWith(imageUrl: lessonImageUrl);
      }
      final addedLesson = await _repository.addLesson(
          event.courseId, lesson.copyWith(courseId: event.courseId));
      debugPrint('new lesson = $addedLesson');
      add(LessonEvent.load(courseId: event.courseId));
      event.onSuccess?.call(addedLesson);
    } on Exception catch (e) {
      debugPrint('err $e');
      event.onError?.call(e);
    }
  }

  FutureOr<void> _deleteLesson(
      LessonDeleteEvent event, Emitter<LessonState> emit) async {
    try {
      await _repository.deleteLesson(event.lesson);
      event.onSuccess?.call(event.lesson);
    } catch (e) {
      debugPrint(e.toString());
      event.onError?.call(event.lesson);
    }
  }

  FutureOr<void> _updateLesson(
      LessonUpdateEvent event, Emitter<LessonState> emit) async {
    try {
      Lesson lesson = event.lesson;
      if (event.filePickerResult != null) {
        final lessonImageUrl = await _storageRepository.uploadFile('lessons_images', event.filePickerResult!);
        lesson = lesson.copyWith(imageUrl: lessonImageUrl);
      }
      final updatedLesson =
          await _repository.updateLesson(event.courseId, lesson);
      add(LessonEvent.load(courseId: event.courseId));
      event.onSuccess?.call(updatedLesson);
    } on Exception catch (e) {
      debugPrint(e.toString());
      event.onError?.call(e);
    }
  }

  FutureOr<void> _updateImage(
      LessonUpdateImageEvent event, Emitter<LessonState> emit) {
    _loaded = _loaded.copyWith(filePickerResult: event.filePickerResult);
    emit(_loaded);
  }

  FutureOr<void> _changeFieldsEditable(ChangeFieldsEditableLessonEvent event, Emitter<LessonState> emit) {
    _loaded = _loaded.copyWith(isTitleEditable: !_loaded.isTitleEditable);
    emit(_loaded);
  }

  FutureOr<void> _lessonsStream(LessonsStreamEvent event, Emitter<LessonState> emit) async {
    emit.forEach(_repository.lessonsStream(event.course.id), onData: (lessons) {
      _loaded = _loaded.copyWith(course: event.course, lessons: lessons);
      return _loaded;
    }, onError: (error, stackTrace) {
      return LessonState.error(error.toString());
    });
  }
}
