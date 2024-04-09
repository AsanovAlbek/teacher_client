import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/model/task.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';

import '../../../../core/model/lesson.dart';

class TasksRepositoryImpl implements TasksRepository {
  final SupabaseClient _client;

  TasksRepositoryImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<void> addTask(int lessonId, Task task) async {}

  @override
  Future<void> deleteTask(int lessonId, int taskId) async {
    await _client.from('tasks').delete().eq('id', taskId);
  }

  @override
  Future<List<Task>> lessonTasks(int lessonId) async {
    return _client
        .from('tasks')
        .select(
            'id, course_id, task, task_type, is_trial, lesson, answers!task_id!inner(*)')
        .eq('lesson', lessonId)
        .withConverter<List<Task>>(
            (json) => json.map((taskJson) => Task.fromJson(taskJson)).toList());
  }

  @override
  Future<void> updateTask(Task task) async {}

  @override
  Future<void> addAllTasks(Lesson lesson, List<Task> tasks) async {
    if (tasks.isEmpty) return;
    debugPrint('lesson is $lesson');
    var addedTasks = tasks;
    if (lesson.id == null) {
      Lesson newLesson = await _client
          .from('lessons')
          .insert(lesson.toJson()..remove('id'))
          .select()
          .single()
          .withConverter(Lesson.fromJson);
      addedTasks = addedTasks
          .map((task) => task.copyWith(lessonId: newLesson.id!))
          .toList();
    } else {
      await _client
          .from('lessons')
          .update(lesson.toJson())
          .eq('id', lesson.id!);
    }
    Future.forEach(addedTasks, (task) async {
      Map<String, dynamic> upsertTask = {};
      if (task.id == 0) {
        upsertTask = await _client
            .from('tasks')
            .insert(task.toJson()
              ..remove('id')
              ..remove('answers'))
            .select()
            .single();
      } else {
        await _client
            .from('tasks')
            .update(task.toJson()..remove('answers'))
            .eq('id', task.id);
      }
      Future.forEach(task.taskAnswers, (ans) async {
        var answer = ans;
        if (task.id == 0 && upsertTask.isNotEmpty) {
          answer = answer.copyWith(taskId: upsertTask['id']);
        }
        if (answer.id == 0) {
          await _client.from('answers').insert(answer.toJson()..remove('id'));
        } else {
          await _client
              .from('answers')
              .update(answer.toJson())
              .eq('id', answer.id);
        }
      });
    });
    debugPrint('complete');
  }

  @override
  Future<void> deleteAnswersFromTask(Task task) async {
    await _client.from('answers').delete().eq('task_id', task.id);
  }
}
