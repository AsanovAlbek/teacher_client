// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonEvent {
  int get courseId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(int courseId, Lesson lesson) addLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(int courseId, Lesson lesson)? addLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(int courseId, Lesson lesson)? addLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonEventCopyWith<LessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonEventCopyWith<$Res> {
  factory $LessonEventCopyWith(
          LessonEvent value, $Res Function(LessonEvent) then) =
      _$LessonEventCopyWithImpl<$Res, LessonEvent>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class _$LessonEventCopyWithImpl<$Res, $Val extends LessonEvent>
    implements $LessonEventCopyWith<$Res> {
  _$LessonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonLoadEventImplCopyWith<$Res>
    implements $LessonEventCopyWith<$Res> {
  factory _$$LessonLoadEventImplCopyWith(_$LessonLoadEventImpl value,
          $Res Function(_$LessonLoadEventImpl) then) =
      __$$LessonLoadEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$LessonLoadEventImplCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$LessonLoadEventImpl>
    implements _$$LessonLoadEventImplCopyWith<$Res> {
  __$$LessonLoadEventImplCopyWithImpl(
      _$LessonLoadEventImpl _value, $Res Function(_$LessonLoadEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$LessonLoadEventImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LessonLoadEventImpl extends LessonLoadEvent {
  const _$LessonLoadEventImpl({required this.courseId}) : super._();

  @override
  final int courseId;

  @override
  String toString() {
    return 'LessonEvent.load(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonLoadEventImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonLoadEventImplCopyWith<_$LessonLoadEventImpl> get copyWith =>
      __$$LessonLoadEventImplCopyWithImpl<_$LessonLoadEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(int courseId, Lesson lesson) addLesson,
  }) {
    return load(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(int courseId, Lesson lesson)? addLesson,
  }) {
    return load?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(int courseId, Lesson lesson)? addLesson,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LessonLoadEvent extends LessonEvent {
  const factory LessonLoadEvent({required final int courseId}) =
      _$LessonLoadEventImpl;
  const LessonLoadEvent._() : super._();

  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$LessonLoadEventImplCopyWith<_$LessonLoadEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonAddEventImplCopyWith<$Res>
    implements $LessonEventCopyWith<$Res> {
  factory _$$LessonAddEventImplCopyWith(_$LessonAddEventImpl value,
          $Res Function(_$LessonAddEventImpl) then) =
      __$$LessonAddEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courseId, Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$LessonAddEventImplCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$LessonAddEventImpl>
    implements _$$LessonAddEventImplCopyWith<$Res> {
  __$$LessonAddEventImplCopyWithImpl(
      _$LessonAddEventImpl _value, $Res Function(_$LessonAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? lesson = null,
  }) {
    return _then(_$LessonAddEventImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$LessonAddEventImpl extends LessonAddEvent {
  const _$LessonAddEventImpl({required this.courseId, required this.lesson})
      : super._();

  @override
  final int courseId;
  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'LessonEvent.addLesson(courseId: $courseId, lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonAddEventImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonAddEventImplCopyWith<_$LessonAddEventImpl> get copyWith =>
      __$$LessonAddEventImplCopyWithImpl<_$LessonAddEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(int courseId, Lesson lesson) addLesson,
  }) {
    return addLesson(courseId, lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(int courseId, Lesson lesson)? addLesson,
  }) {
    return addLesson?.call(courseId, lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(int courseId, Lesson lesson)? addLesson,
    required TResult orElse(),
  }) {
    if (addLesson != null) {
      return addLesson(courseId, lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
  }) {
    return addLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
  }) {
    return addLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    required TResult orElse(),
  }) {
    if (addLesson != null) {
      return addLesson(this);
    }
    return orElse();
  }
}

abstract class LessonAddEvent extends LessonEvent {
  const factory LessonAddEvent(
      {required final int courseId,
      required final Lesson lesson}) = _$LessonAddEventImpl;
  const LessonAddEvent._() : super._();

  @override
  int get courseId;
  Lesson get lesson;
  @override
  @JsonKey(ignore: true)
  _$$LessonAddEventImplCopyWith<_$LessonAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(List<Lesson> lessons) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(List<Lesson> lessons)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(List<Lesson> lessons)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonsLoadingState value) loading,
    required TResult Function(LessonsErrorState value) error,
    required TResult Function(LessonLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonsLoadingState value)? loading,
    TResult? Function(LessonsErrorState value)? error,
    TResult? Function(LessonLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonsLoadingState value)? loading,
    TResult Function(LessonsErrorState value)? error,
    TResult Function(LessonLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LessonsLoadingStateImplCopyWith<$Res> {
  factory _$$LessonsLoadingStateImplCopyWith(_$LessonsLoadingStateImpl value,
          $Res Function(_$LessonsLoadingStateImpl) then) =
      __$$LessonsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LessonsLoadingStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonsLoadingStateImpl>
    implements _$$LessonsLoadingStateImplCopyWith<$Res> {
  __$$LessonsLoadingStateImplCopyWithImpl(_$LessonsLoadingStateImpl _value,
      $Res Function(_$LessonsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LessonsLoadingStateImpl extends LessonsLoadingState {
  const _$LessonsLoadingStateImpl() : super._();

  @override
  String toString() {
    return 'LessonState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(List<Lesson> lessons) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(List<Lesson> lessons)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(List<Lesson> lessons)? loaded,
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
    required TResult Function(LessonsLoadingState value) loading,
    required TResult Function(LessonsErrorState value) error,
    required TResult Function(LessonLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonsLoadingState value)? loading,
    TResult? Function(LessonsErrorState value)? error,
    TResult? Function(LessonLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonsLoadingState value)? loading,
    TResult Function(LessonsErrorState value)? error,
    TResult Function(LessonLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LessonsLoadingState extends LessonState {
  const factory LessonsLoadingState() = _$LessonsLoadingStateImpl;
  const LessonsLoadingState._() : super._();
}

/// @nodoc
abstract class _$$LessonsErrorStateImplCopyWith<$Res> {
  factory _$$LessonsErrorStateImplCopyWith(_$LessonsErrorStateImpl value,
          $Res Function(_$LessonsErrorStateImpl) then) =
      __$$LessonsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LessonsErrorStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonsErrorStateImpl>
    implements _$$LessonsErrorStateImplCopyWith<$Res> {
  __$$LessonsErrorStateImplCopyWithImpl(_$LessonsErrorStateImpl _value,
      $Res Function(_$LessonsErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LessonsErrorStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LessonsErrorStateImpl extends LessonsErrorState {
  const _$LessonsErrorStateImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'LessonState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonsErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonsErrorStateImplCopyWith<_$LessonsErrorStateImpl> get copyWith =>
      __$$LessonsErrorStateImplCopyWithImpl<_$LessonsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(List<Lesson> lessons) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(List<Lesson> lessons)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(List<Lesson> lessons)? loaded,
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
    required TResult Function(LessonsLoadingState value) loading,
    required TResult Function(LessonsErrorState value) error,
    required TResult Function(LessonLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonsLoadingState value)? loading,
    TResult? Function(LessonsErrorState value)? error,
    TResult? Function(LessonLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonsLoadingState value)? loading,
    TResult Function(LessonsErrorState value)? error,
    TResult Function(LessonLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LessonsErrorState extends LessonState {
  const factory LessonsErrorState(final String? message) =
      _$LessonsErrorStateImpl;
  const LessonsErrorState._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$LessonsErrorStateImplCopyWith<_$LessonsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonLoadedStateImplCopyWith<$Res> {
  factory _$$LessonLoadedStateImplCopyWith(_$LessonLoadedStateImpl value,
          $Res Function(_$LessonLoadedStateImpl) then) =
      __$$LessonLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Lesson> lessons});
}

/// @nodoc
class __$$LessonLoadedStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonLoadedStateImpl>
    implements _$$LessonLoadedStateImplCopyWith<$Res> {
  __$$LessonLoadedStateImplCopyWithImpl(_$LessonLoadedStateImpl _value,
      $Res Function(_$LessonLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
  }) {
    return _then(_$LessonLoadedStateImpl(
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

class _$LessonLoadedStateImpl extends LessonLoadedState {
  const _$LessonLoadedStateImpl({final List<Lesson> lessons = const <Lesson>[]})
      : _lessons = lessons,
        super._();

  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'LessonState.loaded(lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonLoadedStateImplCopyWith<_$LessonLoadedStateImpl> get copyWith =>
      __$$LessonLoadedStateImplCopyWithImpl<_$LessonLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(List<Lesson> lessons) loaded,
  }) {
    return loaded(lessons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(List<Lesson> lessons)? loaded,
  }) {
    return loaded?.call(lessons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(List<Lesson> lessons)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonsLoadingState value) loading,
    required TResult Function(LessonsErrorState value) error,
    required TResult Function(LessonLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonsLoadingState value)? loading,
    TResult? Function(LessonsErrorState value)? error,
    TResult? Function(LessonLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonsLoadingState value)? loading,
    TResult Function(LessonsErrorState value)? error,
    TResult Function(LessonLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LessonLoadedState extends LessonState {
  const factory LessonLoadedState({final List<Lesson> lessons}) =
      _$LessonLoadedStateImpl;
  const LessonLoadedState._() : super._();

  List<Lesson> get lessons;
  @JsonKey(ignore: true)
  _$$LessonLoadedStateImplCopyWith<_$LessonLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
