import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/course/course.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final SupabaseClient _client;

  CoursesRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<Course> addCourse(Course course) async {
    log('insert');
    Course insertedCourse = await _client
        .from('courses')
        .insert(course.toJson()..remove('id'))
        .select()
        .single()
        .withConverter(Course.fromJson);

    await _client.from('teachers_courses').upsert({
      'teacher_id': _client.auth.currentUser!.id,
      'course_id': insertedCourse.id
    });
    return insertedCourse;
  }

  @override
  Future<List<Course>> teacherCourses() async {
    return _client.rpc<List<Map<String, dynamic>>>('teacher_courses', params: {
      'user_id': _client.auth.currentUser?.id
    }).withConverter((data) {
      debugPrint(data.toString());
      return List<Map<String, dynamic>>.from(data)
          .map(Course.fromJson)
          .toList();
    });
  }

  @override
  Future<List<Course>> searchCourses(String query) async {
    debugPrint('uid ${_client.auth.currentUser?.id}');
    return _client.rpc('search_teacher_courses', params: {
      'user_id': _client.auth.currentUser?.id,
      'query': '%$query%'
    }).withConverter((data) =>
        List<Map<String, dynamic>>.from(data).map(Course.fromJson).toList());
  }

  @override
  Future<Course> updateCourse(Course course) async {
    return _client
        .from('courses')
        .update(course.toJson())
        .eq('id', course.id)
        .select()
        .single()
        .withConverter(Course.fromJson);
  }

  @override
  Stream<List<Course>> searchTeacherAvailableCourses(String query) {
    return _client
        .from('courses')
        .stream(primaryKey: ['id']).asyncMap((jsonList) async {
      return _client.rpc('search_teacher_courses', params: {
        'user_id': _client.auth.currentUser?.id,
        'query': '%$query%'
      }).withConverter((data) =>
          List<Map<String, dynamic>>.from(data).map(Course.fromJson).toList());
    });
  }
}
