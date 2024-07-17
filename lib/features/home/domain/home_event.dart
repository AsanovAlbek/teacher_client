import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/core/model/task/task.dart';

import '../../../core/model/course/course.dart';

sealed class HomeEvent {
  static HomeEventSetCourse setCourse(
          {required Course course, Function(Course)? onSuccess}) =>
      HomeEventSetCourse(course: course, onSuccess: onSuccess);

  static HomeEventSetLesson setLesson(
          {required Lesson lesson, Function(Lesson)? onSuccess}) =>
      HomeEventSetLesson(lesson: lesson, onSuccess: onSuccess);

  static HomeEventRestoreGlobalNavigateArgsEvent load(
          {Function(Course?, Lesson?, List<Task>?)? onSuccess}) =>
      HomeEventRestoreGlobalNavigateArgsEvent(onSuccess: onSuccess);

  static HomeEventSetTasks setTasks({required List<Task> tasks, Function()? onSuccess}) {
    return HomeEventSetTasks(tasks: tasks, onSuccess: onSuccess);
  }
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
  final Function(Course?, Lesson?, List<Task>?)? onSuccess;

  HomeEventRestoreGlobalNavigateArgsEvent({this.onSuccess});
}

class HomeEventSetTasks extends HomeEvent {
  final List<Task> tasks;
  final Function()? onSuccess;

  HomeEventSetTasks({required this.tasks, this.onSuccess});
}
