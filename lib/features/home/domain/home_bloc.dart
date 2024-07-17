import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/model/course/course.dart';
import '../../../core/model/lesson/lesson.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(): super(HomeState()) {
    on<HomeEventSetCourse>(_setCourse);
    on<HomeEventSetLesson>(_setLesson);
    on<HomeEventRestoreGlobalNavigateArgsEvent>(_loadArgs);
  }

  FutureOr<void> _setCourse(HomeEventSetCourse event, Emitter<HomeState> emit) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString('course', json.encode(event.course.toJson()));
    emit(state.copyWith(course: event.course));
    event.onSuccess?.call(event.course);
  }

  FutureOr<void> _setLesson(HomeEventSetLesson event, Emitter<HomeState> emit) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString('lesson', json.encode(event.lesson.toJson()));
    emit(state.copyWith(lesson: event.lesson));
    event.onSuccess?.call(event.lesson);
  }

  FutureOr<void> _loadArgs(HomeEventRestoreGlobalNavigateArgsEvent event, Emitter<HomeState> emit) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    String? encodedCourseString = sharedPrefs.getString('course');
    if (encodedCourseString != null) {
      Course restoredCourse = Course.fromJson(json.decode(encodedCourseString));
      debugPrint('course is $restoredCourse');
      emit(state.copyWith(course: restoredCourse));
      String? encodedLessonString = sharedPrefs.getString('lesson');
      Lesson? restoredLesson = state.lesson;
      if (encodedLessonString != null) {
        restoredLesson = Lesson.fromJson(json.decode(encodedLessonString));
        debugPrint('lesson is $restoredLesson');
        emit(state.copyWith(lesson: restoredLesson));
      }
      event.onSuccess?.call(restoredCourse, restoredLesson, []);
    }
  }
}