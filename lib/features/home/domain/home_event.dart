import 'package:teacher_client/core/model/lesson.dart';

import '../../../../core/model/course.dart';

sealed class HomeEvent {
  static HomeEventSetCourse setCourse(Course course) => HomeEventSetCourse(course: course);
  static HomeEventSetLesson setLesson(Lesson lesson) => HomeEventSetLesson(lesson: lesson);
}

class HomeEventSetCourse extends HomeEvent {
  final Course course;
  HomeEventSetCourse({required this.course});
}

class HomeEventSetLesson extends HomeEvent {
  final Lesson lesson;
  HomeEventSetLesson({required this.lesson});
}