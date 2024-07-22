import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';

import '../../../../core/model/answer/answer.dart';

class TasksRepositoryImpl implements TasksRepository {
  final SupabaseClient _client;
  final talker = Talker();

  TasksRepositoryImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<Task> addTask(int lessonId, Task task) async {
    try {
      return _client
        .from('tasks')
        .insert(task.copyWith(lessonId: lessonId).toJson()
          ..remove('id')
          ..remove('answers'))
        .select()
        .single()
        .withConverter(Task.fromJson);
    } catch(e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTask(int lessonId, int taskId) async {
    await _client.from('tasks').delete().eq('id', taskId);
  }

  @override
  Future<void> updateTask(Task task) async {
    return _client
        .from('tasks')
        .update(task.toJson()..remove('answers'))
        .eq('id', task.id);
  }

  @override
  Stream<List<Task>> lessonTasksStream(int lessonId) {
    // Обновление заданий при каждом изменении ответов на них
    return _client
        .from('answers')
        .stream(primaryKey: ['id']).asyncMap((tasksListJson) async {
      return _client
          .from('tasks')
          .select(
              'id, course_id, task, task_type, is_trial, lesson, answers!task_id!inner(*)')
          .eq('lesson', lessonId)
          .withConverter<List<Task>>((json) =>
              json.map((taskJson) => Task.fromJson(taskJson)).toList());
    });
  }

  @override
  Future<void> updateAnswer(Answer answer, int taskId) {
    return _client.from('answers').update(answer.toJson()).eq('id', answer.id);
  }

  @override
  Future<List<Answer>> addAnswers(Task task) async {
    final taskType = TaskType.values.firstWhere((type) => type.rowTaskType == task.taskType);
    final answers = List<Answer>.filled(taskType.defaultAnswersCount, Answer(taskId: task.id));
    return _client
        .from('answers')
        .insert(answers.map((answer) => answer.toJson()..remove('id')).toList())
        .select()
        .withConverter((json) => List<Map<String, dynamic>>.from(json)
            .map(Answer.fromJson)
            .toList());
  }
}
