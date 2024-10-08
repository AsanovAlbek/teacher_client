import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teacher_client/features/collaborators/view/collaborators.dart';

import '../../../../core/model/course/course.dart';
import '../../../../core/model/lesson/lesson.dart';
import '../../../../core/repository/storage_repository.dart';
import '../repository/courses_repository.dart';

part 'course_event.dart';

part 'course_state.dart';

part 'course_bloc.freezed.dart';

class CourseBloc extends Bloc<CoursesEvent, CourseState> {
  final CoursesRepository _coursesRepository;
  final StorageRepository _imageUploadRepository;

  CourseBloc(
      {required CoursesRepository coursesRepository,
      required StorageRepository uploadRepository})
      : _coursesRepository = coursesRepository,
        _imageUploadRepository = uploadRepository,
        super(const CourseState.loading()) {
    on<CoursesLoadEvent>(_load);
    on<CoursesSearchEvent>(_search);
    on<CoursesAddCourseEvent>(_addCourse);
    on<CourseUpdateEvent>(_updateCourse);
    on<CoursesStreamSearchEvent>(_searchStream, transformer: restartable());
    on<CoursesDeleteEvent>(_deleteCourse);
  }

  CourseStateLoaded _loaded = const CourseStateLoaded();

  FutureOr<void> _load(
      CoursesLoadEvent event, Emitter<CourseState> emit) async {
    if (state is! CourseStateLoading) {
      emit(const CourseState.loading());
    }
    try {
      final courses = await _coursesRepository.teacherCourses();
      debugPrint('courses = ${courses.map((e) => e.name).toList()}');
      if (courses.isEmpty) {
        emit(const CourseState.empty());
      } else {
        _loaded = _loaded.copyWith(courses: courses.toSet().toList());
        emit(_loaded);
      }
    } catch (e, stack) {
      debugPrint('err $e');
      debugPrintStack(stackTrace: stack);
      emit(const CourseState.error(message: 'Нет подключения к интернету'));
    }
  }

  FutureOr<void> _search(
      CoursesSearchEvent event, Emitter<CourseState> emit) async {
    try {
      final courses = await _coursesRepository.searchCourses(event.query);
      debugPrint('search courses = ${courses.map((e) => e.name).toList()}');
      if (courses.isEmpty) {
        emit(const CourseState.empty());
      } else {
        _loaded = _loaded.copyWith(courses: courses.toSet().toList());
        emit(_loaded);
      }
    } catch (e, stack) {
      emit(const CourseState.error(message: 'Нет подключения к интернету'));
      debugPrint('err $e');
      debugPrintStack(stackTrace: stack);
    }
  }

  FutureOr<void> _addCourse(
      CoursesAddCourseEvent event, Emitter<CourseState> emit) async {
    Course course = event.course;
    try {
      if (event.pickerResult != null) {
        final imageUrl = await _imageUploadRepository.uploadFile(
            'courses_images', event.pickerResult!);
        course = course.copyWith(iconUrl: imageUrl);
      }
      final insertedCourse = await _coursesRepository.addCourse(course);
      event.onSuccess?.call(insertedCourse);
      // add(const CoursesEvent.load());
    } on Exception catch (e, stack) {
      debugPrint('err $e');
      debugPrintStack(stackTrace: stack);
      event.onError?.call(e);
    }
  }

  FutureOr<void> _updateCourse(
      CourseUpdateEvent event, Emitter<CourseState> emit) async {
    Course course = event.course;
    try {
      if (event.pickerResult != null) {
        final imageUrl = await _imageUploadRepository.uploadFile(
            'courses_images', event.pickerResult!);
        course = course.copyWith(iconUrl: imageUrl);
      }
      final updatedCourse = await _coursesRepository.updateCourse(course);
      // add(const CoursesEvent.load());
      event.onSuccess?.call(updatedCourse);
    } on Exception catch (e) {
      event.onError?.call(e);
    }
  }

  FutureOr<void> _searchStream(
      CoursesStreamSearchEvent event, Emitter<CourseState> emit) {
    emit.forEach(_coursesRepository.searchTeacherAvailableCourses(event.query),
        onData: (courses) {
      _loaded = _loaded.copyWith(courses: courses);
      if (courses.isEmpty) {
        return const CourseState.empty();
      } else {
        return _loaded;
      }
    }, onError: (error, stackTrace) {
      return const CourseState.error(message: 'Нет подключения к интернету');
    });
  }

  FutureOr<void> _deleteCourse(CoursesDeleteEvent event, Emitter<CourseState> emit) async {
    try {
      final course = await _coursesRepository.deleteCourse(event.course);
      event.onSuccess?.call(course);
    } on Exception catch (e) {
      event.onError?.call(e);
    }
  }
}
