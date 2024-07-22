part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const TasksEvent._();

  const factory TasksEvent.tasksStream({required Lesson lesson}) =
      TasksStreamEvent;

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

  const factory TasksEvent.changeFieldsEditable() =
      ChangeFieldsEditableTasksEvent;

  const factory TasksEvent.updateAnswer(
      {required Answer answer,
      required int taskId,
      FilePickerResult? image,
      FilePickerResult? audio}) = UpdateAnswerTasksEvent;
}
