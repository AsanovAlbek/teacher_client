import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/features/lessons/data/model/lessons_model.dart';

abstract interface class LessonsRepository {
  Future<List<Lesson>> lessonsByCourse(int courseId);
  Future<Lesson> addLesson(int courseId, Lesson lesson);
  Future<Lesson> updateLesson(int courseId, Lesson lesson);
  Future<Lesson> lessonById(int lessonId);
  Future<void> deleteLesson(Lesson lesson);
  Stream<List<Lesson>> lessonsStream(int courseId);
}