import 'package:teacher_client/core/model/lesson.dart';

import '../../../../core/model/course.dart';

sealed class HomeEvent {
  static HomeEventSetCourse setCourse({required Course course, Function(Course)? onSuccess}) =>
      HomeEventSetCourse(course: course, onSuccess: onSuccess);

  static HomeEventSetLesson setLesson({required Lesson lesson, Function(Lesson)? onSuccess}) =>
      HomeEventSetLesson(lesson: lesson, onSuccess: onSuccess);

  static HomeEventRestoreGlobalNavigateArgsEvent load({Function(Course?, Lesson?)? onSuccess}) =>
      HomeEventRestoreGlobalNavigateArgsEvent(onSuccess: onSuccess);
}

class HomeEventSetCourse extends HomeEvent {
  final Course course;
  final Function(Course)? onSuccess;

  HomeEventSetCourse({required this.course, this.onSuccess});
}

class HomeEventSetLesson extends HomeEvent {
  final Lesson lesson;
  final Function(Lesson)? onSuccess;

  HomeEventSetLesson({required this.lesson, this.onSuccess});
}

class HomeEventRestoreGlobalNavigateArgsEvent extends HomeEvent {
  final Function(Course?, Lesson?)? onSuccess;

  HomeEventRestoreGlobalNavigateArgsEvent({this.onSuccess});
}
