import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/course.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';

import '../../../core/model/lesson.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final SupabaseClient _client;

  CoursesRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<Course> upsertCourse(Course course) async {
    debugPrint('uid ${_client.auth.currentUser?.id}');
    Map<String, dynamic>? upsertCourseJson;
    // новая запись
    if (course.id == null) {
      log('insert');
      // записываем без id, он добавится сам
      final upsertCourseJson = await _client
          .from('courses')
          .insert(course.toJson()..remove('id'))
          .select()
          .single();
    } else {
      log('update');
      // Запись уже имеется, обновляем
      upsertCourseJson = await _client
          .from('courses')
          .update(course.toJson())
          .eq('id', course.id!).select().limit(1).single();
    }

    final upsertCourse = Course.fromJson(upsertCourseJson ?? {});

    await _client.from('teachers_courses').upsert({
      'teacher_id': _client.auth.currentUser!.id,
      // Если мы добавили новую запись, используем полученный id, иначе запись уже
      // существует и мы её обновили, используя id имеющегося курса
      'course_id': upsertCourse.id ?? course.id
    });
    return upsertCourse;
  }

  @override
  Future<List<Course>> teacherCourses() async {
    return _client.rpc<List<Map<String, dynamic>>>('teacher_courses', params: {
      'user_id': _client.auth.currentUser?.id
    }).withConverter((data) {
      debugPrint(data.toString());
      return List<Map<String, dynamic>>.from(data).map(Course.fromJson).toList();
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
}
