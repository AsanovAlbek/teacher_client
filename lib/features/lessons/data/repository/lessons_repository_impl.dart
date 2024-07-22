import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/features/collaborators/view/collaborators.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';

class LessonsRepositoryImpl implements LessonsRepository {
  final SupabaseClient _client;

  LessonsRepositoryImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<Lesson> addLesson(int courseId, Lesson lesson) async {
    return _client
        .from('lessons')
        .insert(lesson.toJson()..remove('id'))
        .select()
        .single()
        .withConverter(Lesson.fromJson);
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

  @override
  Future<Lesson> lessonById(int lessonId) async {
    return await _client
        .from('lessons')
        .select()
        .eq('id', lessonId)
        .single()
        .withConverter(Lesson.fromJson);
  }

  @override
  Future<void> deleteLesson(Lesson lesson) async {
    await _client.from('lessons').delete().eq('id', lesson.id);
  }

  @override
  Future<Lesson> updateLesson(int courseId, Lesson lesson) {
    return _client
        .from('lessons')
        .update(lesson.toJson())
        .eq('id', lesson.id)
        .select()
        .single()
        .withConverter(Lesson.fromJson);
  }

  @override
  Stream<List<Lesson>> lessonsStream(int courseId) {
    return _client
        .from('lessons')
        .stream(primaryKey: ['id'])
        .eq('course_id', courseId)
        .map((lessonJson) {
          Talker().debug('lessons stream data = $lessonJson');
          return List<Map<String, dynamic>>.from(lessonJson)
            .map(Lesson.fromJson)
            .toList();
        });
  }
}
