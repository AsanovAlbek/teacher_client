// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksStreamEventImplCopyWith<$Res> {
  factory _$$TasksStreamEventImplCopyWith(_$TasksStreamEventImpl value,
          $Res Function(_$TasksStreamEventImpl) then) =
      __$$TasksStreamEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksStreamEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksStreamEventImpl>
    implements _$$TasksStreamEventImplCopyWith<$Res> {
  __$$TasksStreamEventImplCopyWithImpl(_$TasksStreamEventImpl _value,
      $Res Function(_$TasksStreamEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
  }) {
    return _then(_$TasksStreamEventImpl(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

/// @nodoc

class _$TasksStreamEventImpl extends TasksStreamEvent {
  const _$TasksStreamEventImpl({required this.lesson}) : super._();

  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'TasksEvent.tasksStream(lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStreamEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStreamEventImplCopyWith<_$TasksStreamEventImpl> get copyWith =>
      __$$TasksStreamEventImplCopyWithImpl<_$TasksStreamEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return tasksStream(lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return tasksStream?.call(lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (tasksStream != null) {
      return tasksStream(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return tasksStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return tasksStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (tasksStream != null) {
      return tasksStream(this);
    }
    return orElse();
  }
}

abstract class TasksStreamEvent extends TasksEvent {
  const factory TasksStreamEvent({required final Lesson lesson}) =
      _$TasksStreamEventImpl;
  const TasksStreamEvent._() : super._();

  Lesson get lesson;
  @JsonKey(ignore: true)
  _$$TasksStreamEventImplCopyWith<_$TasksStreamEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksAddEventImplCopyWith<$Res> {
  factory _$$TasksAddEventImplCopyWith(
          _$TasksAddEventImpl value, $Res Function(_$TasksAddEventImpl) then) =
      __$$TasksAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Lesson lesson,
      TaskModel task,
      dynamic Function(TaskModel, List<Answer>)? onSuccess,
      dynamic Function(Object?)? onError});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksAddEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksAddEventImpl>
    implements _$$TasksAddEventImplCopyWith<$Res> {
  __$$TasksAddEventImplCopyWithImpl(
      _$TasksAddEventImpl _value, $Res Function(_$TasksAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? task = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$TasksAddEventImpl(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(TaskModel, List<Answer>)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Object?)?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

/// @nodoc

class _$TasksAddEventImpl extends TasksAddEvent {
  const _$TasksAddEventImpl(
      {required this.lesson, required this.task, this.onSuccess, this.onError})
      : super._();

  @override
  final Lesson lesson;
  @override
  final TaskModel task;
  @override
  final dynamic Function(TaskModel, List<Answer>)? onSuccess;
  @override
  final dynamic Function(Object?)? onError;

  @override
  String toString() {
    return 'TasksEvent.addTask(lesson: $lesson, task: $task, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksAddEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lesson, task, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksAddEventImplCopyWith<_$TasksAddEventImpl> get copyWith =>
      __$$TasksAddEventImplCopyWithImpl<_$TasksAddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return addTask(lesson, task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return addTask?.call(lesson, task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(lesson, task, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class TasksAddEvent extends TasksEvent {
  const factory TasksAddEvent(
      {required final Lesson lesson,
      required final TaskModel task,
      final dynamic Function(TaskModel, List<Answer>)? onSuccess,
      final dynamic Function(Object?)? onError}) = _$TasksAddEventImpl;
  const TasksAddEvent._() : super._();

  Lesson get lesson;
  TaskModel get task;
  dynamic Function(TaskModel, List<Answer>)? get onSuccess;
  dynamic Function(Object?)? get onError;
  @JsonKey(ignore: true)
  _$$TasksAddEventImplCopyWith<_$TasksAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksRemoveEventImplCopyWith<$Res> {
  factory _$$TasksRemoveEventImplCopyWith(_$TasksRemoveEventImpl value,
          $Res Function(_$TasksRemoveEventImpl) then) =
      __$$TasksRemoveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$TasksRemoveEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksRemoveEventImpl>
    implements _$$TasksRemoveEventImplCopyWith<$Res> {
  __$$TasksRemoveEventImplCopyWithImpl(_$TasksRemoveEventImpl _value,
      $Res Function(_$TasksRemoveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TasksRemoveEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TasksRemoveEventImpl extends TasksRemoveEvent {
  const _$TasksRemoveEventImpl({required this.taskId}) : super._();

  @override
  final int taskId;

  @override
  String toString() {
    return 'TasksEvent.removeTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksRemoveEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksRemoveEventImplCopyWith<_$TasksRemoveEventImpl> get copyWith =>
      __$$TasksRemoveEventImplCopyWithImpl<_$TasksRemoveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return removeTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return removeTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class TasksRemoveEvent extends TasksEvent {
  const factory TasksRemoveEvent({required final int taskId}) =
      _$TasksRemoveEventImpl;
  const TasksRemoveEvent._() : super._();

  int get taskId;
  @JsonKey(ignore: true)
  _$$TasksRemoveEventImplCopyWith<_$TasksRemoveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksUpdateEventImplCopyWith<$Res> {
  factory _$$TasksUpdateEventImplCopyWith(_$TasksUpdateEventImpl value,
          $Res Function(_$TasksUpdateEventImpl) then) =
      __$$TasksUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TaskModel task,
      dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
      dynamic Function(Object?)? onError});
}

/// @nodoc
class __$$TasksUpdateEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksUpdateEventImpl>
    implements _$$TasksUpdateEventImplCopyWith<$Res> {
  __$$TasksUpdateEventImplCopyWithImpl(_$TasksUpdateEventImpl _value,
      $Res Function(_$TasksUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$TasksUpdateEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(TaskModel, List<AnswerModel>)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Object?)?,
    ));
  }
}

/// @nodoc

class _$TasksUpdateEventImpl extends TasksUpdateEvent {
  const _$TasksUpdateEventImpl(
      {required this.task, this.onSuccess, this.onError})
      : super._();

  @override
  final TaskModel task;
  @override
  final dynamic Function(TaskModel, List<AnswerModel>)? onSuccess;
  @override
  final dynamic Function(Object?)? onError;

  @override
  String toString() {
    return 'TasksEvent.updateTask(task: $task, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksUpdateEventImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksUpdateEventImplCopyWith<_$TasksUpdateEventImpl> get copyWith =>
      __$$TasksUpdateEventImplCopyWithImpl<_$TasksUpdateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return updateTask(task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return updateTask?.call(task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class TasksUpdateEvent extends TasksEvent {
  const factory TasksUpdateEvent(
      {required final TaskModel task,
      final dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
      final dynamic Function(Object?)? onError}) = _$TasksUpdateEventImpl;
  const TasksUpdateEvent._() : super._();

  TaskModel get task;
  dynamic Function(TaskModel, List<AnswerModel>)? get onSuccess;
  dynamic Function(Object?)? get onError;
  @JsonKey(ignore: true)
  _$$TasksUpdateEventImplCopyWith<_$TasksUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFieldsEditableTasksEventImplCopyWith<$Res> {
  factory _$$ChangeFieldsEditableTasksEventImplCopyWith(
          _$ChangeFieldsEditableTasksEventImpl value,
          $Res Function(_$ChangeFieldsEditableTasksEventImpl) then) =
      __$$ChangeFieldsEditableTasksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeFieldsEditableTasksEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ChangeFieldsEditableTasksEventImpl>
    implements _$$ChangeFieldsEditableTasksEventImplCopyWith<$Res> {
  __$$ChangeFieldsEditableTasksEventImplCopyWithImpl(
      _$ChangeFieldsEditableTasksEventImpl _value,
      $Res Function(_$ChangeFieldsEditableTasksEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeFieldsEditableTasksEventImpl
    extends ChangeFieldsEditableTasksEvent {
  const _$ChangeFieldsEditableTasksEventImpl() : super._();

  @override
  String toString() {
    return 'TasksEvent.changeFieldsEditable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFieldsEditableTasksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return changeFieldsEditable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return changeFieldsEditable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (changeFieldsEditable != null) {
      return changeFieldsEditable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return changeFieldsEditable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return changeFieldsEditable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (changeFieldsEditable != null) {
      return changeFieldsEditable(this);
    }
    return orElse();
  }
}

abstract class ChangeFieldsEditableTasksEvent extends TasksEvent {
  const factory ChangeFieldsEditableTasksEvent() =
      _$ChangeFieldsEditableTasksEventImpl;
  const ChangeFieldsEditableTasksEvent._() : super._();
}

/// @nodoc
abstract class _$$UpdateAnswerTasksEventImplCopyWith<$Res> {
  factory _$$UpdateAnswerTasksEventImplCopyWith(
          _$UpdateAnswerTasksEventImpl value,
          $Res Function(_$UpdateAnswerTasksEventImpl) then) =
      __$$UpdateAnswerTasksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Answer answer,
      int taskId,
      FilePickerResult? image,
      FilePickerResult? audio});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$UpdateAnswerTasksEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$UpdateAnswerTasksEventImpl>
    implements _$$UpdateAnswerTasksEventImplCopyWith<$Res> {
  __$$UpdateAnswerTasksEventImplCopyWithImpl(
      _$UpdateAnswerTasksEventImpl _value,
      $Res Function(_$UpdateAnswerTasksEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? taskId = null,
    Object? image = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$UpdateAnswerTasksEventImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$UpdateAnswerTasksEventImpl extends UpdateAnswerTasksEvent {
  const _$UpdateAnswerTasksEventImpl(
      {required this.answer, required this.taskId, this.image, this.audio})
      : super._();

  @override
  final Answer answer;
  @override
  final int taskId;
  @override
  final FilePickerResult? image;
  @override
  final FilePickerResult? audio;

  @override
  String toString() {
    return 'TasksEvent.updateAnswer(answer: $answer, taskId: $taskId, image: $image, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAnswerTasksEventImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer, taskId, image, audio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAnswerTasksEventImplCopyWith<_$UpdateAnswerTasksEventImpl>
      get copyWith => __$$UpdateAnswerTasksEventImplCopyWithImpl<
          _$UpdateAnswerTasksEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) tasksStream,
    required TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)
        addTask,
    required TResult Function(int taskId) removeTask,
    required TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)
        updateTask,
    required TResult Function() changeFieldsEditable,
    required TResult Function(Answer answer, int taskId,
            FilePickerResult? image, FilePickerResult? audio)
        updateAnswer,
  }) {
    return updateAnswer(answer, taskId, image, audio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? tasksStream,
    TResult? Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult? Function(int taskId)? removeTask,
    TResult? Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult? Function()? changeFieldsEditable,
    TResult? Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
  }) {
    return updateAnswer?.call(answer, taskId, image, audio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? tasksStream,
    TResult Function(
            Lesson lesson,
            TaskModel task,
            dynamic Function(TaskModel, List<Answer>)? onSuccess,
            dynamic Function(Object?)? onError)?
        addTask,
    TResult Function(int taskId)? removeTask,
    TResult Function(
            TaskModel task,
            dynamic Function(TaskModel, List<AnswerModel>)? onSuccess,
            dynamic Function(Object?)? onError)?
        updateTask,
    TResult Function()? changeFieldsEditable,
    TResult Function(Answer answer, int taskId, FilePickerResult? image,
            FilePickerResult? audio)?
        updateAnswer,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(answer, taskId, image, audio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStreamEvent value) tasksStream,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(ChangeFieldsEditableTasksEvent value)
        changeFieldsEditable,
    required TResult Function(UpdateAnswerTasksEvent value) updateAnswer,
  }) {
    return updateAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStreamEvent value)? tasksStream,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult? Function(UpdateAnswerTasksEvent value)? updateAnswer,
  }) {
    return updateAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStreamEvent value)? tasksStream,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(ChangeFieldsEditableTasksEvent value)?
        changeFieldsEditable,
    TResult Function(UpdateAnswerTasksEvent value)? updateAnswer,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(this);
    }
    return orElse();
  }
}

abstract class UpdateAnswerTasksEvent extends TasksEvent {
  const factory UpdateAnswerTasksEvent(
      {required final Answer answer,
      required final int taskId,
      final FilePickerResult? image,
      final FilePickerResult? audio}) = _$UpdateAnswerTasksEventImpl;
  const UpdateAnswerTasksEvent._() : super._();

  Answer get answer;
  int get taskId;
  FilePickerResult? get image;
  FilePickerResult? get audio;
  @JsonKey(ignore: true)
  _$$UpdateAnswerTasksEventImplCopyWith<_$UpdateAnswerTasksEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)
        load,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStateLoading value) loading,
    required TResult Function(TasksStateLoaded value) load,
    required TResult Function(TasksStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStateLoading value)? loading,
    TResult? Function(TasksStateLoaded value)? load,
    TResult? Function(TasksStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStateLoading value)? loading,
    TResult Function(TasksStateLoaded value)? load,
    TResult Function(TasksStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksStateLoadingImplCopyWith<$Res> {
  factory _$$TasksStateLoadingImplCopyWith(_$TasksStateLoadingImpl value,
          $Res Function(_$TasksStateLoadingImpl) then) =
      __$$TasksStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksStateLoadingImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateLoadingImpl>
    implements _$$TasksStateLoadingImplCopyWith<$Res> {
  __$$TasksStateLoadingImplCopyWithImpl(_$TasksStateLoadingImpl _value,
      $Res Function(_$TasksStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksStateLoadingImpl extends TasksStateLoading {
  const _$TasksStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'TasksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)
        load,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStateLoading value) loading,
    required TResult Function(TasksStateLoaded value) load,
    required TResult Function(TasksStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStateLoading value)? loading,
    TResult? Function(TasksStateLoaded value)? load,
    TResult? Function(TasksStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStateLoading value)? loading,
    TResult Function(TasksStateLoaded value)? load,
    TResult Function(TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TasksStateLoading extends TasksState {
  const factory TasksStateLoading() = _$TasksStateLoadingImpl;
  const TasksStateLoading._() : super._();
}

/// @nodoc
abstract class _$$TasksStateLoadedImplCopyWith<$Res> {
  factory _$$TasksStateLoadedImplCopyWith(_$TasksStateLoadedImpl value,
          $Res Function(_$TasksStateLoadedImpl) then) =
      __$$TasksStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Course course,
      Lesson lesson,
      List<TaskModel> tasks,
      UpdatingState updatingState,
      bool isTitleEditable,
      FilePickerResult? filePickerResult});

  $CourseCopyWith<$Res> get course;
  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksStateLoadedImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateLoadedImpl>
    implements _$$TasksStateLoadedImplCopyWith<$Res> {
  __$$TasksStateLoadedImplCopyWithImpl(_$TasksStateLoadedImpl _value,
      $Res Function(_$TasksStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? lesson = null,
    Object? tasks = null,
    Object? updatingState = null,
    Object? isTitleEditable = null,
    Object? filePickerResult = freezed,
  }) {
    return _then(_$TasksStateLoadedImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      updatingState: null == updatingState
          ? _value.updatingState
          : updatingState // ignore: cast_nullable_to_non_nullable
              as UpdatingState,
      isTitleEditable: null == isTitleEditable
          ? _value.isTitleEditable
          : isTitleEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      filePickerResult: freezed == filePickerResult
          ? _value.filePickerResult
          : filePickerResult // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

/// @nodoc

class _$TasksStateLoadedImpl extends TasksStateLoaded {
  const _$TasksStateLoadedImpl(
      {this.course = const Course(),
      this.lesson = const Lesson(),
      final List<TaskModel> tasks = const <TaskModel>[],
      this.updatingState = UpdatingState.closed,
      this.isTitleEditable = true,
      this.filePickerResult})
      : _tasks = tasks,
        super._();

  @override
  @JsonKey()
  final Course course;
  @override
  @JsonKey()
  final Lesson lesson;
  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final UpdatingState updatingState;
  @override
  @JsonKey()
  final bool isTitleEditable;
  @override
  final FilePickerResult? filePickerResult;

  @override
  String toString() {
    return 'TasksState.load(course: $course, lesson: $lesson, tasks: $tasks, updatingState: $updatingState, isTitleEditable: $isTitleEditable, filePickerResult: $filePickerResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateLoadedImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.updatingState, updatingState) ||
                other.updatingState == updatingState) &&
            (identical(other.isTitleEditable, isTitleEditable) ||
                other.isTitleEditable == isTitleEditable) &&
            (identical(other.filePickerResult, filePickerResult) ||
                other.filePickerResult == filePickerResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      course,
      lesson,
      const DeepCollectionEquality().hash(_tasks),
      updatingState,
      isTitleEditable,
      filePickerResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateLoadedImplCopyWith<_$TasksStateLoadedImpl> get copyWith =>
      __$$TasksStateLoadedImplCopyWithImpl<_$TasksStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)
        load,
    required TResult Function(String? message) error,
  }) {
    return load(course, lesson, tasks, updatingState, isTitleEditable,
        filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return load?.call(course, lesson, tasks, updatingState, isTitleEditable,
        filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(course, lesson, tasks, updatingState, isTitleEditable,
          filePickerResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStateLoading value) loading,
    required TResult Function(TasksStateLoaded value) load,
    required TResult Function(TasksStateError value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStateLoading value)? loading,
    TResult? Function(TasksStateLoaded value)? load,
    TResult? Function(TasksStateError value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStateLoading value)? loading,
    TResult Function(TasksStateLoaded value)? load,
    TResult Function(TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TasksStateLoaded extends TasksState {
  const factory TasksStateLoaded(
      {final Course course,
      final Lesson lesson,
      final List<TaskModel> tasks,
      final UpdatingState updatingState,
      final bool isTitleEditable,
      final FilePickerResult? filePickerResult}) = _$TasksStateLoadedImpl;
  const TasksStateLoaded._() : super._();

  Course get course;
  Lesson get lesson;
  List<TaskModel> get tasks;
  UpdatingState get updatingState;
  bool get isTitleEditable;
  FilePickerResult? get filePickerResult;
  @JsonKey(ignore: true)
  _$$TasksStateLoadedImplCopyWith<_$TasksStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksStateErrorImplCopyWith<$Res> {
  factory _$$TasksStateErrorImplCopyWith(_$TasksStateErrorImpl value,
          $Res Function(_$TasksStateErrorImpl) then) =
      __$$TasksStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TasksStateErrorImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateErrorImpl>
    implements _$$TasksStateErrorImplCopyWith<$Res> {
  __$$TasksStateErrorImplCopyWithImpl(
      _$TasksStateErrorImpl _value, $Res Function(_$TasksStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TasksStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TasksStateErrorImpl extends TasksStateError {
  const _$TasksStateErrorImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'TasksState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateErrorImplCopyWith<_$TasksStateErrorImpl> get copyWith =>
      __$$TasksStateErrorImplCopyWithImpl<_$TasksStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)
        load,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Course course,
            Lesson lesson,
            List<TaskModel> tasks,
            UpdatingState updatingState,
            bool isTitleEditable,
            FilePickerResult? filePickerResult)?
        load,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksStateLoading value) loading,
    required TResult Function(TasksStateLoaded value) load,
    required TResult Function(TasksStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksStateLoading value)? loading,
    TResult? Function(TasksStateLoaded value)? load,
    TResult? Function(TasksStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksStateLoading value)? loading,
    TResult Function(TasksStateLoaded value)? load,
    TResult Function(TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TasksStateError extends TasksState {
  const factory TasksStateError({final String? message}) =
      _$TasksStateErrorImpl;
  const TasksStateError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$TasksStateErrorImplCopyWith<_$TasksStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
