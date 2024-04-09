import 'dart:async';
import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/course.dart';
import '../../../../core/model/lesson.dart';
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
    if (state is! CourseStateLoading) {
      emit(const CourseState.loading());
    }
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
      await _coursesRepository.addCourse(course, event.lessons);
      add(const CoursesEvent.load());
    } catch (e, stack) {
      debugPrint('err $e');
      debugPrintStack(stackTrace: stack);
    }
  }
}
