import 'package:teacher_client/core/model/course/course.dart';


abstract interface class CoursesRepository {
  Future<List<Course>> teacherCourses();
  Future<Course> addCourse(Course course);
  Future<Course> updateCourse(Course course);
  Future<List<Course>> searchCourses(String query);
}