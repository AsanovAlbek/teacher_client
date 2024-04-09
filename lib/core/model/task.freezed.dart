// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task')
  String get task => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_type')
  int get taskType => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<Answer> get taskAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson')
  int get lessonId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'task') String task,
      @JsonKey(name: 'task_type') int taskType,
      @JsonKey(name: 'answers') List<Answer> taskAnswers,
      @JsonKey(name: 'lesson') int lessonId});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? task = null,
    Object? taskType = null,
    Object? taskAnswers = null,
    Object? lessonId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as int,
      taskAnswers: null == taskAnswers
          ? _value.taskAnswers
          : taskAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'task') String task,
      @JsonKey(name: 'task_type') int taskType,
      @JsonKey(name: 'answers') List<Answer> taskAnswers,
      @JsonKey(name: 'lesson') int lessonId});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? task = null,
    Object? taskType = null,
    Object? taskAnswers = null,
    Object? lessonId = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as int,
      taskAnswers: null == taskAnswers
          ? _value._taskAnswers
          : taskAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'course_id') this.courseId = 0,
      @JsonKey(name: 'task') this.task = '',
      @JsonKey(name: 'task_type') this.taskType = 0,
      @JsonKey(name: 'answers')
      final List<Answer> taskAnswers = const <Answer>[],
      @JsonKey(name: 'lesson') this.lessonId = 0})
      : _taskAnswers = taskAnswers;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'course_id')
  final int courseId;
  @override
  @JsonKey(name: 'task')
  final String task;
  @override
  @JsonKey(name: 'task_type')
  final int taskType;
  final List<Answer> _taskAnswers;
  @override
  @JsonKey(name: 'answers')
  List<Answer> get taskAnswers {
    if (_taskAnswers is EqualUnmodifiableListView) return _taskAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskAnswers);
  }

  @override
  @JsonKey(name: 'lesson')
  final int lessonId;

  @override
  String toString() {
    return 'Task(id: $id, courseId: $courseId, task: $task, taskType: $taskType, taskAnswers: $taskAnswers, lessonId: $lessonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            const DeepCollectionEquality()
                .equals(other._taskAnswers, _taskAnswers) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, task, taskType,
      const DeepCollectionEquality().hash(_taskAnswers), lessonId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'course_id') final int courseId,
      @JsonKey(name: 'task') final String task,
      @JsonKey(name: 'task_type') final int taskType,
      @JsonKey(name: 'answers') final List<Answer> taskAnswers,
      @JsonKey(name: 'lesson') final int lessonId}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'course_id')
  int get courseId;
  @override
  @JsonKey(name: 'task')
  String get task;
  @override
  @JsonKey(name: 'task_type')
  int get taskType;
  @override
  @JsonKey(name: 'answers')
  List<Answer> get taskAnswers;
  @override
  @JsonKey(name: 'lesson')
  int get lessonId;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
