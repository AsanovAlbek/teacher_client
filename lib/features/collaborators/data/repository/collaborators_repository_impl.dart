import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/teacher/teacher.dart';
import 'package:teacher_client/features/collaborators/data/repository/exceptions.dart';
import 'package:teacher_client/features/collaborators/domain/repository/collaborators_repository.dart';

class CollaboratorsRepositoryImpl implements CollaboratorsRepository {
  final SupabaseClient client;
  CollaboratorsRepositoryImpl({required this.client});

  @override
  Future<Teacher> addCollaboratorByEmail(int courseId, String email) async {
    final teacher = await client
        .from('teachers')
        .select()
        .eq('email', email)
        .limit(1)
        .maybeSingle()
        .withConverter((json) {
          return json != null ? Teacher.fromJson(json) : null;
        });
    if (teacher != null) {
      await client
          .from('collaborators')
          .upsert({'teacher_id': teacher.id, 'course_id': courseId});
      return teacher;
    } else {
      throw CollaboratorNotFoundException(
          'Ошибка при добавлении пользователя', email);
    }
  }

  @override
  Future<Teacher> removeCollaboratorById(
      int courseId, String collaboratorId) async {
    return client
        .from('collaborators')
        .delete()
        .eq('teacher_id', collaboratorId)
        .eq('course_id', courseId)
        .select()
        .single()
        .withConverter(Teacher.fromJson);
  }

  @override
  Future<List<Teacher>> courseCollaborators(int courseId) async {
    final collaboratorIds = await client
        .from('collaborators')
        .select('teacher_id')
        .eq('course_id', courseId)
        .withConverter((teachers) => List<Map<String, dynamic>>.from(teachers)
            .map((teacher) => teacher['teacher_id'] as String)
            .toSet());
    debugPrint('users in course $courseId $collaboratorIds');
    final teachers = await client.from('teachers').select().withConverter(
        (teacherJson) => List<Map<String, dynamic>>.from(teacherJson)
            .map((json) => Teacher.fromJson(json))
            .toList());
    return teachers
        .where((teacher) => collaboratorIds.contains(teacher.id))
        .toList();
  }
}
