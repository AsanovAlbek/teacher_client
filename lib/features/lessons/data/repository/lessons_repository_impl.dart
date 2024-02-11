import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/lesson.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';

class LessonsRepositoryImpl implements LessonsRepository {
  final SupabaseClient _client;

  LessonsRepositoryImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<void> addLesson(int courseId, Lesson lesson) async {
    if (lesson.id == null) {
      log('insert');
      final res = await _client
          .from('lessons')
          .insert(lesson.toJson()..remove('id')).select();
      debugPrint(res.toString());
    } else {
      log('update');
      await _client.from('lessons').update(lesson.toJson()).eq('id', lesson.id!);
    }
    //return _client.from('lessons').upsert(lesson.toJson());
  }

  @override
  Future<List<Lesson>> lessonsByCourse(int courseId) async {
    return _client
        .from('lessons')
        .select()
        .eq('course_id', courseId)
        .withConverter<List<Lesson>>((data) =>
            List<Map<String, dynamic>>.from(data)
                .map(Lesson.fromJson)
                .toList());
  }
}
