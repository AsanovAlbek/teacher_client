import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/course.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';

import '../../../core/model/lesson.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final SupabaseClient _client;

  CoursesRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<int> addCourse(Course course, [List<Lesson>? lessons]) async {
    int? courseId;
    // новая запись
    if (course.id == null) {
      log('insert');
      // записываем без id, он добавится сам
      final insertedCourse = await _client
          .from('courses')
          .insert(course.toJson()..remove('id'))
          .select()
          .single();
      // так же получаем id записи, которую мы добавили
      courseId = insertedCourse['id'] as int?;
      if (lessons != null && lessons.isNotEmpty) {
        final insertedLessons = lessons
            .toList(growable: true)
            .map((lesson) => lesson.copyWith(courseId: courseId ?? course.id!))
            .map((e) => e.toJson()..remove('id'))
            .toList();
        await _client.from('lessons').insert(insertedLessons);
      }
    } else {
      log('update');
      // Запись уже имеется, обновляем
      await _client
          .from('courses')
          .update(course.toJson())
          .eq('id', course.id!);
    }

    await _client.from('teachers_courses').upsert({
      'teacher_id': _client.auth.currentUser?.id ?? 0,
      // Если мы добавили новую запись, используем полученный id, иначе запись уже
      // существует и мы её обновили, используя id имеющегося курса
      'course_id': courseId ?? course.id
    });
    return courseId ?? course.id!;
  }

  @override
  Future<List<Course>> teacherCourses() async {
    return _client.rpc('teacher_courses', params: {
      'user_id': _client.auth.currentUser?.id ?? 0
    }).withConverter((data) =>
        List<Map<String, dynamic>>.from(data).map(Course.fromJson).toList());
  }

  @override
  Future<List<Course>> searchCourses(String query) async {
    return _client.rpc('search_teacher_courses', params: {
      'user_id': _client.auth.currentUser?.id ?? 0,
      'query': '%$query%'
    }).withConverter((data) =>
        List<Map<String, dynamic>>.from(data).map(Course.fromJson).toList());
  }
}
