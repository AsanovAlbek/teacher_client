part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const TasksEvent._();

  const factory TasksEvent.load({required Lesson lesson}) = TasksLoadEvent;

  const factory TasksEvent.createLesson({required Lesson lesson}) = TasksCreateLessonEvent;

  const factory TasksEvent.setLesson({required Lesson lesson}) = TasksSetLessonEvent;

  const factory TasksEvent.addTask(
      {required Lesson lesson,
      required TaskModel task,
      Function(TaskModel, List<Answer>)? onSuccess,
      Function(Object?)? onError}) = TasksAddEvent;

  const factory TasksEvent.removeTask({required int taskId}) = TasksRemoveEvent;

  const factory TasksEvent.updateTask(
      {required TaskModel task,
      Function(TaskModel, List<AnswerModel>)? onSuccess,
      Function(Object?)? onError}) = TasksUpdateEvent;

  const factory TasksEvent.setTask({required TaskModel task}) = TasksSetEvent;

  const factory TasksEvent.saveTasks({required List<TaskModel> tasks}) = TasksSaveEvent;

  const factory TasksEvent.removeAnswersFromTask({required Task task}) = RemoveAnswersFromTaskEvent;
}
