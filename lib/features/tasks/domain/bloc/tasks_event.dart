part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const TasksEvent._();

  const factory TasksEvent.load({required Lesson lesson}) = TasksLoadEvent;

  const factory TasksEvent.upsertTask(
      {required TaskModel task, Function(bool progress)? onProgress,
        Function()? onSuccess,
        Function()? onError}) = TasksUpsertEvent;

  const factory TasksEvent.removeTask({required int taskId}) = TasksRemoveEvent;

  const factory TasksEvent.removeAnswersFromTask({required Task task}) =
      RemoveAnswersFromTaskEvent;
}
