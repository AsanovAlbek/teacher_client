import 'package:teacher_client/core/model/lesson.dart';

abstract interface class LessonsRepository {
  Future<List<Lesson>> lessonsByCourse(int courseId);
  Future<Lesson> upsertLesson(Lesson lesson);
  Future<Lesson> lessonById(int lessonId);
  Future<void> deleteLesson(Lesson lesson);
}