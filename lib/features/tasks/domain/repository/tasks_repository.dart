import 'package:teacher_client/features/tasks/data/model/lesson_info.dart';

import '../../../../core/model/answer/answer.dart';
import '../../../../core/model/task/task.dart';

abstract interface class TasksRepository {
  Stream<List<Task>> lessonTasksStream(int lessonId);
  Future<Task> addTask(int lessonId, Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(int lessonId, int taskId);
  Future<void> updateAnswer(Answer answer, int taskId);
  Future<List<Answer>> addAnswers(Task task);
}