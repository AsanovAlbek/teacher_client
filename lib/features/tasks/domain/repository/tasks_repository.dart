import '../../../../core/model/answer.dart';
import '../../../../core/model/task.dart';

abstract interface class TasksRepository {
  Future<List<Task>>lessonTasks(int lessonId);
  Future<Task> addTask(int lessonId, Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(int lessonId, int taskId);
  Future<List<Answer>> addAnswers(List<Answer> answers, int taskId);
  Future<void> updateAnswers(List<Answer> answers, int taskId);
  Future<void> deleteAnswersFromTask(Task task);
}