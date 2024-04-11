import 'package:equatable/equatable.dart';

import '../../../../core/model/course.dart';
import '../../../../core/model/lesson.dart';

class HomeState with EquatableMixin{
  Course? course;
  Lesson? lesson;
  HomeState({this.course, this.lesson});

  @override
  List<Object?> get props => [course, lesson];

  HomeState copyWith({Course? course, Lesson? lesson}) {
    return HomeState(
      course: course ?? this.course,
      lesson: lesson ?? this.lesson
    );
  }
  @override
  bool? get stringify => true;
}