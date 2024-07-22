import 'package:teacher_client/core/model/course/course.dart';
import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/features/collaborators/view/collaborators.dart';

@immutable
class LessonsModel {
  final Course course;
  final List<Lesson> lessons;

  const LessonsModel({required this.course, this.lessons = const <Lesson>[]});
}