import 'package:teacher_client/core/model/course.dart';

import '../../../../core/model/lesson.dart';

abstract interface class CoursesRepository {
  Future<List<Course>> teacherCourses();
  Future<int> addCourse(Course course,[List<Lesson>? lessons]);
  Future<List<Course>> searchCourses(String query);
}