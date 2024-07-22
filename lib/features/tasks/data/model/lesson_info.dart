import 'package:flutter/cupertino.dart';
import 'package:teacher_client/core/model/course/course.dart';
import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/core/model/task/task.dart';

@immutable
class LessonInfo {
  final Lesson lesson;
  final List<Task> tasks;

  const LessonInfo({required this.lesson, this.tasks = const <Task>[]});
}