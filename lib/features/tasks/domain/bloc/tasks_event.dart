part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const TasksEvent._();

  const factory TasksEvent.load({required Lesson lesson}) = TasksLoadEvent;

  const factory TasksEvent.createLesson({required Lesson lesson}) =
      TasksCreateLessonEvent;

  const factory TasksEvent.setLesson({required Lesson lesson}) =
      TasksSetLessonEvent;

  const factory TasksEvent.addTask(
      {required int lessonId, required TaskModel task}) = TasksAddEvent;

  const factory TasksEvent.removeTask({required int taskId}) = TasksRemoveEvent;

  const factory TasksEvent.updateTask({required TaskModel task}) = TasksUpdateEvent;

  const factory TasksEvent.setTask({required TaskModel task}) = TasksSetEvent;

  const factory TasksEvent.saveTasks({required List<TaskModel> tasks}) = TasksSaveEvent;

  const factory TasksEvent.removeAnswersFromTask({required Task task}) = RemoveAnswersFromTaskEvent;
}
