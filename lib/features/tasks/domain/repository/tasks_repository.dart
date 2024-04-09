import '../../../../core/model/lesson.dart';
import '../../../../core/model/task.dart';

abstract interface class TasksRepository {
  Future<List<Task>>lessonTasks(int lessonId);
  Future<void> addTask(int lessonId, Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(int lessonId, int taskId);
  Future<void> addAllTasks(Lesson lesson, List<Task> tasks);
  Future<void> deleteAnswersFromTask(Task task);
}