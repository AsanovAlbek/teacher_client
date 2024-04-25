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
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
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
abstract class _$$TasksLoadEventImplCopyWith<$Res> {
  factory _$$TasksLoadEventImplCopyWith(_$TasksLoadEventImpl value,
          $Res Function(_$TasksLoadEventImpl) then) =
      __$$TasksLoadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksLoadEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksLoadEventImpl>
    implements _$$TasksLoadEventImplCopyWith<$Res> {
  __$$TasksLoadEventImplCopyWithImpl(
      _$TasksLoadEventImpl _value, $Res Function(_$TasksLoadEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
  }) {
    return _then(_$TasksLoadEventImpl(
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

class _$TasksLoadEventImpl extends TasksLoadEvent {
  const _$TasksLoadEventImpl({required this.lesson}) : super._();

  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'TasksEvent.load(lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksLoadEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksLoadEventImplCopyWith<_$TasksLoadEventImpl> get copyWith =>
      __$$TasksLoadEventImplCopyWithImpl<_$TasksLoadEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return load(lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return load?.call(lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TasksLoadEvent extends TasksEvent {
  const factory TasksLoadEvent({required final Lesson lesson}) =
      _$TasksLoadEventImpl;
  const TasksLoadEvent._() : super._();

  Lesson get lesson;
  @JsonKey(ignore: true)
  _$$TasksLoadEventImplCopyWith<_$TasksLoadEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksCreateLessonEventImplCopyWith<$Res> {
  factory _$$TasksCreateLessonEventImplCopyWith(
          _$TasksCreateLessonEventImpl value,
          $Res Function(_$TasksCreateLessonEventImpl) then) =
      __$$TasksCreateLessonEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksCreateLessonEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksCreateLessonEventImpl>
    implements _$$TasksCreateLessonEventImplCopyWith<$Res> {
  __$$TasksCreateLessonEventImplCopyWithImpl(
      _$TasksCreateLessonEventImpl _value,
      $Res Function(_$TasksCreateLessonEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
  }) {
    return _then(_$TasksCreateLessonEventImpl(
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

class _$TasksCreateLessonEventImpl extends TasksCreateLessonEvent {
  const _$TasksCreateLessonEventImpl({required this.lesson}) : super._();

  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'TasksEvent.createLesson(lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksCreateLessonEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksCreateLessonEventImplCopyWith<_$TasksCreateLessonEventImpl>
      get copyWith => __$$TasksCreateLessonEventImplCopyWithImpl<
          _$TasksCreateLessonEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return createLesson(lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return createLesson?.call(lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (createLesson != null) {
      return createLesson(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return createLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return createLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (createLesson != null) {
      return createLesson(this);
    }
    return orElse();
  }
}

abstract class TasksCreateLessonEvent extends TasksEvent {
  const factory TasksCreateLessonEvent({required final Lesson lesson}) =
      _$TasksCreateLessonEventImpl;
  const TasksCreateLessonEvent._() : super._();

  Lesson get lesson;
  @JsonKey(ignore: true)
  _$$TasksCreateLessonEventImplCopyWith<_$TasksCreateLessonEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksSetLessonEventImplCopyWith<$Res> {
  factory _$$TasksSetLessonEventImplCopyWith(_$TasksSetLessonEventImpl value,
          $Res Function(_$TasksSetLessonEventImpl) then) =
      __$$TasksSetLessonEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$TasksSetLessonEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksSetLessonEventImpl>
    implements _$$TasksSetLessonEventImplCopyWith<$Res> {
  __$$TasksSetLessonEventImplCopyWithImpl(_$TasksSetLessonEventImpl _value,
      $Res Function(_$TasksSetLessonEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
  }) {
    return _then(_$TasksSetLessonEventImpl(
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

class _$TasksSetLessonEventImpl extends TasksSetLessonEvent {
  const _$TasksSetLessonEventImpl({required this.lesson}) : super._();

  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'TasksEvent.setLesson(lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksSetLessonEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksSetLessonEventImplCopyWith<_$TasksSetLessonEventImpl> get copyWith =>
      __$$TasksSetLessonEventImplCopyWithImpl<_$TasksSetLessonEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return setLesson(lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return setLesson?.call(lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (setLesson != null) {
      return setLesson(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return setLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return setLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (setLesson != null) {
      return setLesson(this);
    }
    return orElse();
  }
}

abstract class TasksSetLessonEvent extends TasksEvent {
  const factory TasksSetLessonEvent({required final Lesson lesson}) =
      _$TasksSetLessonEventImpl;
  const TasksSetLessonEvent._() : super._();

  Lesson get lesson;
  @JsonKey(ignore: true)
  _$$TasksSetLessonEventImplCopyWith<_$TasksSetLessonEventImpl> get copyWith =>
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
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return addTask(lesson, task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return addTask?.call(lesson, task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
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
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
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
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return removeTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return removeTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
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
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
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
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return updateTask(task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return updateTask?.call(task, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
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
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
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
abstract class _$$UpdateAllTasksEventImplCopyWith<$Res> {
  factory _$$UpdateAllTasksEventImplCopyWith(_$UpdateAllTasksEventImpl value,
          $Res Function(_$UpdateAllTasksEventImpl) then) =
      __$$UpdateAllTasksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TaskModel> tasks,
      dynamic Function(List<Task>)? onSuccess,
      dynamic Function(Exception?)? onError});
}

/// @nodoc
class __$$UpdateAllTasksEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$UpdateAllTasksEventImpl>
    implements _$$UpdateAllTasksEventImplCopyWith<$Res> {
  __$$UpdateAllTasksEventImplCopyWithImpl(_$UpdateAllTasksEventImpl _value,
      $Res Function(_$UpdateAllTasksEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$UpdateAllTasksEventImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(List<Task>)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Exception?)?,
    ));
  }
}

/// @nodoc

class _$UpdateAllTasksEventImpl extends UpdateAllTasksEvent {
  const _$UpdateAllTasksEventImpl(
      {required final List<TaskModel> tasks, this.onSuccess, this.onError})
      : _tasks = tasks,
        super._();

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final dynamic Function(List<Task>)? onSuccess;
  @override
  final dynamic Function(Exception?)? onError;

  @override
  String toString() {
    return 'TasksEvent.updateAllTasks(tasks: $tasks, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAllTasksEventImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tasks), onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAllTasksEventImplCopyWith<_$UpdateAllTasksEventImpl> get copyWith =>
      __$$UpdateAllTasksEventImplCopyWithImpl<_$UpdateAllTasksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return updateAllTasks(tasks, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return updateAllTasks?.call(tasks, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (updateAllTasks != null) {
      return updateAllTasks(tasks, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return updateAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return updateAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (updateAllTasks != null) {
      return updateAllTasks(this);
    }
    return orElse();
  }
}

abstract class UpdateAllTasksEvent extends TasksEvent {
  const factory UpdateAllTasksEvent(
      {required final List<TaskModel> tasks,
      final dynamic Function(List<Task>)? onSuccess,
      final dynamic Function(Exception?)? onError}) = _$UpdateAllTasksEventImpl;
  const UpdateAllTasksEvent._() : super._();

  List<TaskModel> get tasks;
  dynamic Function(List<Task>)? get onSuccess;
  dynamic Function(Exception?)? get onError;
  @JsonKey(ignore: true)
  _$$UpdateAllTasksEventImplCopyWith<_$UpdateAllTasksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksSetEventImplCopyWith<$Res> {
  factory _$$TasksSetEventImplCopyWith(
          _$TasksSetEventImpl value, $Res Function(_$TasksSetEventImpl) then) =
      __$$TasksSetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$TasksSetEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksSetEventImpl>
    implements _$$TasksSetEventImplCopyWith<$Res> {
  __$$TasksSetEventImplCopyWithImpl(
      _$TasksSetEventImpl _value, $Res Function(_$TasksSetEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TasksSetEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$TasksSetEventImpl extends TasksSetEvent {
  const _$TasksSetEventImpl({required this.task}) : super._();

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TasksEvent.setTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksSetEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksSetEventImplCopyWith<_$TasksSetEventImpl> get copyWith =>
      __$$TasksSetEventImplCopyWithImpl<_$TasksSetEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return setTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return setTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (setTask != null) {
      return setTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return setTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return setTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (setTask != null) {
      return setTask(this);
    }
    return orElse();
  }
}

abstract class TasksSetEvent extends TasksEvent {
  const factory TasksSetEvent({required final TaskModel task}) =
      _$TasksSetEventImpl;
  const TasksSetEvent._() : super._();

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$TasksSetEventImplCopyWith<_$TasksSetEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksSaveEventImplCopyWith<$Res> {
  factory _$$TasksSaveEventImplCopyWith(_$TasksSaveEventImpl value,
          $Res Function(_$TasksSaveEventImpl) then) =
      __$$TasksSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$TasksSaveEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksSaveEventImpl>
    implements _$$TasksSaveEventImplCopyWith<$Res> {
  __$$TasksSaveEventImplCopyWithImpl(
      _$TasksSaveEventImpl _value, $Res Function(_$TasksSaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TasksSaveEventImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$TasksSaveEventImpl extends TasksSaveEvent {
  const _$TasksSaveEventImpl({required final List<TaskModel> tasks})
      : _tasks = tasks,
        super._();

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksEvent.saveTasks(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksSaveEventImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksSaveEventImplCopyWith<_$TasksSaveEventImpl> get copyWith =>
      __$$TasksSaveEventImplCopyWithImpl<_$TasksSaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return saveTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return saveTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (saveTasks != null) {
      return saveTasks(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return saveTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return saveTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (saveTasks != null) {
      return saveTasks(this);
    }
    return orElse();
  }
}

abstract class TasksSaveEvent extends TasksEvent {
  const factory TasksSaveEvent({required final List<TaskModel> tasks}) =
      _$TasksSaveEventImpl;
  const TasksSaveEvent._() : super._();

  List<TaskModel> get tasks;
  @JsonKey(ignore: true)
  _$$TasksSaveEventImplCopyWith<_$TasksSaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAnswersFromTaskEventImplCopyWith<$Res> {
  factory _$$RemoveAnswersFromTaskEventImplCopyWith(
          _$RemoveAnswersFromTaskEventImpl value,
          $Res Function(_$RemoveAnswersFromTaskEventImpl) then) =
      __$$RemoveAnswersFromTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$RemoveAnswersFromTaskEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$RemoveAnswersFromTaskEventImpl>
    implements _$$RemoveAnswersFromTaskEventImplCopyWith<$Res> {
  __$$RemoveAnswersFromTaskEventImplCopyWithImpl(
      _$RemoveAnswersFromTaskEventImpl _value,
      $Res Function(_$RemoveAnswersFromTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$RemoveAnswersFromTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$RemoveAnswersFromTaskEventImpl extends RemoveAnswersFromTaskEvent {
  const _$RemoveAnswersFromTaskEventImpl({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.removeAnswersFromTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAnswersFromTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAnswersFromTaskEventImplCopyWith<_$RemoveAnswersFromTaskEventImpl>
      get copyWith => __$$RemoveAnswersFromTaskEventImplCopyWithImpl<
          _$RemoveAnswersFromTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson) load,
    required TResult Function(Lesson lesson) createLesson,
    required TResult Function(Lesson lesson) setLesson,
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
    required TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateAllTasks,
    required TResult Function(TaskModel task) setTask,
    required TResult Function(List<TaskModel> tasks) saveTasks,
    required TResult Function(Task task) removeAnswersFromTask,
  }) {
    return removeAnswersFromTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson)? load,
    TResult? Function(Lesson lesson)? createLesson,
    TResult? Function(Lesson lesson)? setLesson,
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
    TResult? Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult? Function(TaskModel task)? setTask,
    TResult? Function(List<TaskModel> tasks)? saveTasks,
    TResult? Function(Task task)? removeAnswersFromTask,
  }) {
    return removeAnswersFromTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson)? load,
    TResult Function(Lesson lesson)? createLesson,
    TResult Function(Lesson lesson)? setLesson,
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
    TResult Function(
            List<TaskModel> tasks,
            dynamic Function(List<Task>)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateAllTasks,
    TResult Function(TaskModel task)? setTask,
    TResult Function(List<TaskModel> tasks)? saveTasks,
    TResult Function(Task task)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (removeAnswersFromTask != null) {
      return removeAnswersFromTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadEvent value) load,
    required TResult Function(TasksCreateLessonEvent value) createLesson,
    required TResult Function(TasksSetLessonEvent value) setLesson,
    required TResult Function(TasksAddEvent value) addTask,
    required TResult Function(TasksRemoveEvent value) removeTask,
    required TResult Function(TasksUpdateEvent value) updateTask,
    required TResult Function(UpdateAllTasksEvent value) updateAllTasks,
    required TResult Function(TasksSetEvent value) setTask,
    required TResult Function(TasksSaveEvent value) saveTasks,
    required TResult Function(RemoveAnswersFromTaskEvent value)
        removeAnswersFromTask,
  }) {
    return removeAnswersFromTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadEvent value)? load,
    TResult? Function(TasksCreateLessonEvent value)? createLesson,
    TResult? Function(TasksSetLessonEvent value)? setLesson,
    TResult? Function(TasksAddEvent value)? addTask,
    TResult? Function(TasksRemoveEvent value)? removeTask,
    TResult? Function(TasksUpdateEvent value)? updateTask,
    TResult? Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult? Function(TasksSetEvent value)? setTask,
    TResult? Function(TasksSaveEvent value)? saveTasks,
    TResult? Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
  }) {
    return removeAnswersFromTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadEvent value)? load,
    TResult Function(TasksCreateLessonEvent value)? createLesson,
    TResult Function(TasksSetLessonEvent value)? setLesson,
    TResult Function(TasksAddEvent value)? addTask,
    TResult Function(TasksRemoveEvent value)? removeTask,
    TResult Function(TasksUpdateEvent value)? updateTask,
    TResult Function(UpdateAllTasksEvent value)? updateAllTasks,
    TResult Function(TasksSetEvent value)? setTask,
    TResult Function(TasksSaveEvent value)? saveTasks,
    TResult Function(RemoveAnswersFromTaskEvent value)? removeAnswersFromTask,
    required TResult orElse(),
  }) {
    if (removeAnswersFromTask != null) {
      return removeAnswersFromTask(this);
    }
    return orElse();
  }
}

abstract class RemoveAnswersFromTaskEvent extends TasksEvent {
  const factory RemoveAnswersFromTaskEvent({required final Task task}) =
      _$RemoveAnswersFromTaskEventImpl;
  const RemoveAnswersFromTaskEvent._() : super._();

  Task get task;
  @JsonKey(ignore: true)
  _$$RemoveAnswersFromTaskEventImplCopyWith<_$RemoveAnswersFromTaskEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Course course, Lesson lesson,
            List<TaskModel> tasks, UpdatingState updatingState)
        load,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
        load,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
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
    required TResult Function(Course course, Lesson lesson,
            List<TaskModel> tasks, UpdatingState updatingState)
        load,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
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
      UpdatingState updatingState});

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
      this.updatingState = UpdatingState.closed})
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
  String toString() {
    return 'TasksState.load(course: $course, lesson: $lesson, tasks: $tasks, updatingState: $updatingState)';
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
                other.updatingState == updatingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course, lesson,
      const DeepCollectionEquality().hash(_tasks), updatingState);

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
    required TResult Function(Course course, Lesson lesson,
            List<TaskModel> tasks, UpdatingState updatingState)
        load,
    required TResult Function(String? message) error,
  }) {
    return load(course, lesson, tasks, updatingState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return load?.call(course, lesson, tasks, updatingState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
        load,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(course, lesson, tasks, updatingState);
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
      final UpdatingState updatingState}) = _$TasksStateLoadedImpl;
  const TasksStateLoaded._() : super._();

  Course get course;
  Lesson get lesson;
  List<TaskModel> get tasks;
  UpdatingState get updatingState;
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
    required TResult Function(Course course, Lesson lesson,
            List<TaskModel> tasks, UpdatingState updatingState)
        load,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
        load,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Course course, Lesson lesson, List<TaskModel> tasks,
            UpdatingState updatingState)?
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
