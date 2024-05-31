import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/core/model/task.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';

import '../../../../core/model/answer.dart';

class TasksRepositoryImpl implements TasksRepository {
  final SupabaseClient _client;
  final talker = Talker();

  TasksRepositoryImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<Task> addTask(int lessonId, Task task) async {
    return _client
        .from('tasks')
        .insert(task.copyWith(lessonId: lessonId).toJson()
          ..remove('id')
          ..remove('answers'))
        .select()
        .single()
        .withConverter(Task.fromJson);
  }

  @override
  Future<void> deleteTask(int lessonId, int taskId) async {
    await _client.from('tasks').delete().eq('id', taskId);
  }

  @override
  Future<List<Task>> lessonTasks(int lessonId) async {
    return _client
        .from('tasks')
        .select('id, course_id, task, task_type, is_trial, lesson, answers!task_id!inner(*)')
        .eq('lesson', lessonId)
        .withConverter<List<Task>>((json) => json.map((taskJson) => Task.fromJson(taskJson)).toList());
  }

  @override
  Future<void> updateTask(Task task) async {
    return _client.from('tasks').update(task.toJson()..remove('answers')).eq('id', task.id);
  }

  @override
  Future<void> deleteAnswersFromTask(Task task) async {
    await _client.from('answers').delete().eq('task_id', task.id);
  }

  @override
  Future<List<Answer>> addAnswers(List<Answer> answers, int taskId) async {
    if (answers.isNotEmpty) {
      return _client
          .from('answers')
          .insert(answers.map((answer) => answer.copyWith(taskId: taskId).toJson()..remove('id')).toList())
          .select()
          .withConverter<List<Answer>>((data) => List<Map<String, dynamic>>.from(data).map(Answer.fromJson).toList());
    } else {
      return <Answer>[];
    }
  }

  @override
  Future<void> updateAnswers(List<Answer> answers, int taskId) async {
    if (answers.isNotEmpty) {
      for (var answer in answers) {
        try {
          await _client.from('answers').update(answer.toJson()).eq('id', answer.id);
        } catch (e, s) {
          talker.handle(e,s, 'update error answer ${answer.id}');
        }
      }
    }
  }
}
