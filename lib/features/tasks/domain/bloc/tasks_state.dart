part of 'tasks_bloc.dart';
@freezed
class TasksState with _$TasksState {
  const TasksState._();
  const factory TasksState.loading() = TasksStateLoading;
  const factory TasksState.load({
    @Default(Course()) Course course,
    @Default(Lesson()) Lesson lesson,
    @Default(<TaskModel>[]) List<TaskModel> tasks
}) = TasksStateLoaded;
  const factory TasksState.error({String? message}) = TasksStateError;
}