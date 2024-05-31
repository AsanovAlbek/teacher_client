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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonEventCopyWith<$Res> {
  factory $LessonEventCopyWith(
          LessonEvent value, $Res Function(LessonEvent) then) =
      _$LessonEventCopyWithImpl<$Res, LessonEvent>;
}

/// @nodoc
class _$LessonEventCopyWithImpl<$Res, $Val extends LessonEvent>
    implements $LessonEventCopyWith<$Res> {
  _$LessonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LessonLoadEventImplCopyWith<$Res> {
  factory _$$LessonLoadEventImplCopyWith(_$LessonLoadEventImpl value,
          $Res Function(_$LessonLoadEventImpl) then) =
      __$$LessonLoadEventImplCopyWithImpl<$Res>;
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
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) {
    return load(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) {
    return load?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
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
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
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

  int get courseId;
  @JsonKey(ignore: true)
  _$$LessonLoadEventImplCopyWith<_$LessonLoadEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonAddEventImplCopyWith<$Res> {
  factory _$$LessonAddEventImplCopyWith(_$LessonAddEventImpl value,
          $Res Function(_$LessonAddEventImpl) then) =
      __$$LessonAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int courseId,
      Lesson lesson,
      dynamic Function(Lesson)? onSuccess,
      dynamic Function(Exception?)? onError});

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
    Object? onSuccess = freezed,
    Object? onError = freezed,
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
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Lesson)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Exception?)?,
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
  const _$LessonAddEventImpl(
      {required this.courseId,
      required this.lesson,
      this.onSuccess,
      this.onError})
      : super._();

  @override
  final int courseId;
  @override
  final Lesson lesson;
  @override
  final dynamic Function(Lesson)? onSuccess;
  @override
  final dynamic Function(Exception?)? onError;

  @override
  String toString() {
    return 'LessonEvent.addLesson(courseId: $courseId, lesson: $lesson, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonAddEventImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, courseId, lesson, onSuccess, onError);

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
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) {
    return addLesson(courseId, lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) {
    return addLesson?.call(courseId, lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
    required TResult orElse(),
  }) {
    if (addLesson != null) {
      return addLesson(courseId, lesson, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) {
    return addLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) {
    return addLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
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
      required final Lesson lesson,
      final dynamic Function(Lesson)? onSuccess,
      final dynamic Function(Exception?)? onError}) = _$LessonAddEventImpl;
  const LessonAddEvent._() : super._();

  int get courseId;
  Lesson get lesson;
  dynamic Function(Lesson)? get onSuccess;
  dynamic Function(Exception?)? get onError;
  @JsonKey(ignore: true)
  _$$LessonAddEventImplCopyWith<_$LessonAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonUpdateEventImplCopyWith<$Res> {
  factory _$$LessonUpdateEventImplCopyWith(_$LessonUpdateEventImpl value,
          $Res Function(_$LessonUpdateEventImpl) then) =
      __$$LessonUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int courseId,
      Lesson lesson,
      dynamic Function(Lesson)? onSuccess,
      dynamic Function(Exception?)? onError});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$LessonUpdateEventImplCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$LessonUpdateEventImpl>
    implements _$$LessonUpdateEventImplCopyWith<$Res> {
  __$$LessonUpdateEventImplCopyWithImpl(_$LessonUpdateEventImpl _value,
      $Res Function(_$LessonUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? lesson = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LessonUpdateEventImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Lesson)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Exception?)?,
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

class _$LessonUpdateEventImpl extends LessonUpdateEvent {
  const _$LessonUpdateEventImpl(
      {required this.courseId,
      required this.lesson,
      this.onSuccess,
      this.onError})
      : super._();

  @override
  final int courseId;
  @override
  final Lesson lesson;
  @override
  final dynamic Function(Lesson)? onSuccess;
  @override
  final dynamic Function(Exception?)? onError;

  @override
  String toString() {
    return 'LessonEvent.updateLesson(courseId: $courseId, lesson: $lesson, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonUpdateEventImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, courseId, lesson, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonUpdateEventImplCopyWith<_$LessonUpdateEventImpl> get copyWith =>
      __$$LessonUpdateEventImplCopyWithImpl<_$LessonUpdateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) {
    return updateLesson(courseId, lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) {
    return updateLesson?.call(courseId, lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
    required TResult orElse(),
  }) {
    if (updateLesson != null) {
      return updateLesson(courseId, lesson, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) {
    return updateLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) {
    return updateLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
    required TResult orElse(),
  }) {
    if (updateLesson != null) {
      return updateLesson(this);
    }
    return orElse();
  }
}

abstract class LessonUpdateEvent extends LessonEvent {
  const factory LessonUpdateEvent(
      {required final int courseId,
      required final Lesson lesson,
      final dynamic Function(Lesson)? onSuccess,
      final dynamic Function(Exception?)? onError}) = _$LessonUpdateEventImpl;
  const LessonUpdateEvent._() : super._();

  int get courseId;
  Lesson get lesson;
  dynamic Function(Lesson)? get onSuccess;
  dynamic Function(Exception?)? get onError;
  @JsonKey(ignore: true)
  _$$LessonUpdateEventImplCopyWith<_$LessonUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonUpdateImageEventImplCopyWith<$Res> {
  factory _$$LessonUpdateImageEventImplCopyWith(
          _$LessonUpdateImageEventImpl value,
          $Res Function(_$LessonUpdateImageEventImpl) then) =
      __$$LessonUpdateImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilePickerResult? filePickerResult});
}

/// @nodoc
class __$$LessonUpdateImageEventImplCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$LessonUpdateImageEventImpl>
    implements _$$LessonUpdateImageEventImplCopyWith<$Res> {
  __$$LessonUpdateImageEventImplCopyWithImpl(
      _$LessonUpdateImageEventImpl _value,
      $Res Function(_$LessonUpdateImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePickerResult = freezed,
  }) {
    return _then(_$LessonUpdateImageEventImpl(
      filePickerResult: freezed == filePickerResult
          ? _value.filePickerResult
          : filePickerResult // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }
}

/// @nodoc

class _$LessonUpdateImageEventImpl extends LessonUpdateImageEvent {
  const _$LessonUpdateImageEventImpl({required this.filePickerResult})
      : super._();

  @override
  final FilePickerResult? filePickerResult;

  @override
  String toString() {
    return 'LessonEvent.updateImage(filePickerResult: $filePickerResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonUpdateImageEventImpl &&
            (identical(other.filePickerResult, filePickerResult) ||
                other.filePickerResult == filePickerResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePickerResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonUpdateImageEventImplCopyWith<_$LessonUpdateImageEventImpl>
      get copyWith => __$$LessonUpdateImageEventImplCopyWithImpl<
          _$LessonUpdateImageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) {
    return updateImage(filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) {
    return updateImage?.call(filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(filePickerResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) {
    return updateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class LessonUpdateImageEvent extends LessonEvent {
  const factory LessonUpdateImageEvent(
          {required final FilePickerResult? filePickerResult}) =
      _$LessonUpdateImageEventImpl;
  const LessonUpdateImageEvent._() : super._();

  FilePickerResult? get filePickerResult;
  @JsonKey(ignore: true)
  _$$LessonUpdateImageEventImplCopyWith<_$LessonUpdateImageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonDeleteEventImplCopyWith<$Res> {
  factory _$$LessonDeleteEventImplCopyWith(_$LessonDeleteEventImpl value,
          $Res Function(_$LessonDeleteEventImpl) then) =
      __$$LessonDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Lesson lesson,
      dynamic Function(Lesson)? onSuccess,
      dynamic Function(Lesson)? onError});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$LessonDeleteEventImplCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$LessonDeleteEventImpl>
    implements _$$LessonDeleteEventImplCopyWith<$Res> {
  __$$LessonDeleteEventImplCopyWithImpl(_$LessonDeleteEventImpl _value,
      $Res Function(_$LessonDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LessonDeleteEventImpl(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Lesson)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Lesson)?,
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

class _$LessonDeleteEventImpl extends LessonDeleteEvent {
  const _$LessonDeleteEventImpl(
      {required this.lesson, this.onSuccess, this.onError})
      : super._();

  @override
  final Lesson lesson;
  @override
  final dynamic Function(Lesson)? onSuccess;
  @override
  final dynamic Function(Lesson)? onError;

  @override
  String toString() {
    return 'LessonEvent.deleteLesson(lesson: $lesson, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonDeleteEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonDeleteEventImplCopyWith<_$LessonDeleteEventImpl> get copyWith =>
      __$$LessonDeleteEventImplCopyWithImpl<_$LessonDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) load,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        addLesson,
    required TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)
        updateLesson,
    required TResult Function(FilePickerResult? filePickerResult) updateImage,
    required TResult Function(
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)
        deleteLesson,
  }) {
    return deleteLesson(lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? load,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult? Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult? Function(FilePickerResult? filePickerResult)? updateImage,
    TResult? Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
  }) {
    return deleteLesson?.call(lesson, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? load,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        addLesson,
    TResult Function(
            int courseId,
            Lesson lesson,
            dynamic Function(Lesson)? onSuccess,
            dynamic Function(Exception?)? onError)?
        updateLesson,
    TResult Function(FilePickerResult? filePickerResult)? updateImage,
    TResult Function(Lesson lesson, dynamic Function(Lesson)? onSuccess,
            dynamic Function(Lesson)? onError)?
        deleteLesson,
    required TResult orElse(),
  }) {
    if (deleteLesson != null) {
      return deleteLesson(lesson, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonLoadEvent value) load,
    required TResult Function(LessonAddEvent value) addLesson,
    required TResult Function(LessonUpdateEvent value) updateLesson,
    required TResult Function(LessonUpdateImageEvent value) updateImage,
    required TResult Function(LessonDeleteEvent value) deleteLesson,
  }) {
    return deleteLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LessonLoadEvent value)? load,
    TResult? Function(LessonAddEvent value)? addLesson,
    TResult? Function(LessonUpdateEvent value)? updateLesson,
    TResult? Function(LessonUpdateImageEvent value)? updateImage,
    TResult? Function(LessonDeleteEvent value)? deleteLesson,
  }) {
    return deleteLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonLoadEvent value)? load,
    TResult Function(LessonAddEvent value)? addLesson,
    TResult Function(LessonUpdateEvent value)? updateLesson,
    TResult Function(LessonUpdateImageEvent value)? updateImage,
    TResult Function(LessonDeleteEvent value)? deleteLesson,
    required TResult orElse(),
  }) {
    if (deleteLesson != null) {
      return deleteLesson(this);
    }
    return orElse();
  }
}

abstract class LessonDeleteEvent extends LessonEvent {
  const factory LessonDeleteEvent(
      {required final Lesson lesson,
      final dynamic Function(Lesson)? onSuccess,
      final dynamic Function(Lesson)? onError}) = _$LessonDeleteEventImpl;
  const LessonDeleteEvent._() : super._();

  Lesson get lesson;
  dynamic Function(Lesson)? get onSuccess;
  dynamic Function(Lesson)? get onError;
  @JsonKey(ignore: true)
  _$$LessonDeleteEventImplCopyWith<_$LessonDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
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
    required TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
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
    required TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
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
  $Res call(
      {Course course,
      List<Lesson> lessons,
      FilePickerResult? filePickerResult});

  $CourseCopyWith<$Res> get course;
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
    Object? course = null,
    Object? lessons = null,
    Object? filePickerResult = freezed,
  }) {
    return _then(_$LessonLoadedStateImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
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
}

/// @nodoc

class _$LessonLoadedStateImpl extends LessonLoadedState {
  const _$LessonLoadedStateImpl(
      {this.course = const Course(),
      final List<Lesson> lessons = const <Lesson>[],
      this.filePickerResult})
      : _lessons = lessons,
        super._();

  @override
  @JsonKey()
  final Course course;
  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final FilePickerResult? filePickerResult;

  @override
  String toString() {
    return 'LessonState.loaded(course: $course, lessons: $lessons, filePickerResult: $filePickerResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonLoadedStateImpl &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.filePickerResult, filePickerResult) ||
                other.filePickerResult == filePickerResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course,
      const DeepCollectionEquality().hash(_lessons), filePickerResult);

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
    required TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)
        loaded,
  }) {
    return loaded(course, lessons, filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
  }) {
    return loaded?.call(course, lessons, filePickerResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(Course course, List<Lesson> lessons,
            FilePickerResult? filePickerResult)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(course, lessons, filePickerResult);
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
  const factory LessonLoadedState(
      {final Course course,
      final List<Lesson> lessons,
      final FilePickerResult? filePickerResult}) = _$LessonLoadedStateImpl;
  const LessonLoadedState._() : super._();

  Course get course;
  List<Lesson> get lessons;
  FilePickerResult? get filePickerResult;
  @JsonKey(ignore: true)
  _$$LessonLoadedStateImplCopyWith<_$LessonLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
