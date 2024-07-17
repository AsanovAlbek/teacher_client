import 'package:equatable/equatable.dart';
import 'package:teacher_client/core/model/task/task.dart';

import '../../../core/model/course/course.dart';
import '../../../core/model/lesson/lesson.dart';

class HomeState with EquatableMixin {
  Course? course;
  Lesson? lesson;
  List<Task>? tasks;
  HomeState({this.course, this.lesson, this.tasks});

  @override
  List<Object?> get props => [course, lesson];

  HomeState copyWith({Course? course, Lesson? lesson, List<Task>? tasks}) {
    return HomeState(
        course: course ?? this.course,
        lesson: lesson ?? this.lesson,
        tasks: tasks ?? this.tasks
    );
  }
  @override
  bool? get stringify => true;
}