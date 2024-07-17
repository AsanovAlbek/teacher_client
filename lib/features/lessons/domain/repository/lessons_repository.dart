import 'package:teacher_client/core/model/lesson/lesson.dart';

abstract interface class LessonsRepository {
  Future<List<Lesson>> lessonsByCourse(int courseId);
  Future<Lesson> addLesson(int courseId, Lesson lesson);
  Future<Lesson> updateLesson(int courseId, Lesson lesson);
  Future<Lesson> lessonById(int lessonId);
  Future<void> deleteLesson(Lesson lesson);
}