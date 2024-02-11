import 'package:teacher_client/core/model/lesson.dart';

abstract interface class LessonsRepository {
  Future<List<Lesson>> lessonsByCourse(int courseId);
  Future<void> addLesson(int courseId, Lesson lesson);
}