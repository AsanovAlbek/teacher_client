// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)
        addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesLoadEvent value) load,
    required TResult Function(CoursesSearchEvent value) search,
    required TResult Function(CoursesAddCourseEvent value) addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesLoadEvent value)? load,
    TResult? Function(CoursesSearchEvent value)? search,
    TResult? Function(CoursesAddCourseEvent value)? addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesLoadEvent value)? load,
    TResult Function(CoursesSearchEvent value)? search,
    TResult Function(CoursesAddCourseEvent value)? addCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEventCopyWith<$Res> {
  factory $CoursesEventCopyWith(
          CoursesEvent value, $Res Function(CoursesEvent) then) =
      _$CoursesEventCopyWithImpl<$Res, CoursesEvent>;
}

/// @nodoc
class _$CoursesEventCopyWithImpl<$Res, $Val extends CoursesEvent>
    implements $CoursesEventCopyWith<$Res> {
  _$CoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoursesLoadEventImplCopyWith<$Res> {
  factory _$$CoursesLoadEventImplCopyWith(_$CoursesLoadEventImpl value,
          $Res Function(_$CoursesLoadEventImpl) then) =
      __$$CoursesLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoursesLoadEventImplCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$CoursesLoadEventImpl>
    implements _$$CoursesLoadEventImplCopyWith<$Res> {
  __$$CoursesLoadEventImplCopyWithImpl(_$CoursesLoadEventImpl _value,
      $Res Function(_$CoursesLoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoursesLoadEventImpl extends CoursesLoadEvent {
  const _$CoursesLoadEventImpl() : super._();

  @override
  String toString() {
    return 'CoursesEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoursesLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)
        addCourse,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesLoadEvent value) load,
    required TResult Function(CoursesSearchEvent value) search,
    required TResult Function(CoursesAddCourseEvent value) addCourse,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesLoadEvent value)? load,
    TResult? Function(CoursesSearchEvent value)? search,
    TResult? Function(CoursesAddCourseEvent value)? addCourse,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesLoadEvent value)? load,
    TResult Function(CoursesSearchEvent value)? search,
    TResult Function(CoursesAddCourseEvent value)? addCourse,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CoursesLoadEvent extends CoursesEvent {
  const factory CoursesLoadEvent() = _$CoursesLoadEventImpl;
  const CoursesLoadEvent._() : super._();
}

/// @nodoc
abstract class _$$CoursesSearchEventImplCopyWith<$Res> {
  factory _$$CoursesSearchEventImplCopyWith(_$CoursesSearchEventImpl value,
          $Res Function(_$CoursesSearchEventImpl) then) =
      __$$CoursesSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoursesSearchEventImplCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$CoursesSearchEventImpl>
    implements _$$CoursesSearchEventImplCopyWith<$Res> {
  __$$CoursesSearchEventImplCopyWithImpl(_$CoursesSearchEventImpl _value,
      $Res Function(_$CoursesSearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoursesSearchEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoursesSearchEventImpl extends CoursesSearchEvent {
  const _$CoursesSearchEventImpl({required this.query}) : super._();

  @override
  final String query;

  @override
  String toString() {
    return 'CoursesEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesSearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesSearchEventImplCopyWith<_$CoursesSearchEventImpl> get copyWith =>
      __$$CoursesSearchEventImplCopyWithImpl<_$CoursesSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)
        addCourse,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesLoadEvent value) load,
    required TResult Function(CoursesSearchEvent value) search,
    required TResult Function(CoursesAddCourseEvent value) addCourse,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesLoadEvent value)? load,
    TResult? Function(CoursesSearchEvent value)? search,
    TResult? Function(CoursesAddCourseEvent value)? addCourse,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesLoadEvent value)? load,
    TResult Function(CoursesSearchEvent value)? search,
    TResult Function(CoursesAddCourseEvent value)? addCourse,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class CoursesSearchEvent extends CoursesEvent {
  const factory CoursesSearchEvent({required final String query}) =
      _$CoursesSearchEventImpl;
  const CoursesSearchEvent._() : super._();

  String get query;
  @JsonKey(ignore: true)
  _$$CoursesSearchEventImplCopyWith<_$CoursesSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoursesAddCourseEventImplCopyWith<$Res> {
  factory _$$CoursesAddCourseEventImplCopyWith(
          _$CoursesAddCourseEventImpl value,
          $Res Function(_$CoursesAddCourseEventImpl) then) =
      __$$CoursesAddCourseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Course course, List<Lesson>? lessons, FilePickerResult? pickerResult});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$CoursesAddCourseEventImplCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$CoursesAddCourseEventImpl>
    implements _$$CoursesAddCourseEventImplCopyWith<$Res> {
  __$$CoursesAddCourseEventImplCopyWithImpl(_$CoursesAddCourseEventImpl _value,
      $Res Function(_$CoursesAddCourseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? lessons = freezed,
    Object? pickerResult = freezed,
  }) {
    return _then(_$CoursesAddCourseEventImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      lessons: freezed == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>?,
      pickerResult: freezed == pickerResult
          ? _value.pickerResult
          : pickerResult // ignore: cast_nullable_to_non_nullable
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

class _$CoursesAddCourseEventImpl extends CoursesAddCourseEvent {
  const _$CoursesAddCourseEventImpl(
      {required this.course, final List<Lesson>? lessons, this.pickerResult})
      : _lessons = lessons,
        super._();

  @override
  final Course course;
  final List<Lesson>? _lessons;
  @override
  List<Lesson>? get lessons {
    final value = _lessons;
    if (value == null) return null;
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FilePickerResult? pickerResult;

  @override
  String toString() {
    return 'CoursesEvent.addCourse(course: $course, lessons: $lessons, pickerResult: $pickerResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesAddCourseEventImpl &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.pickerResult, pickerResult) ||
                other.pickerResult == pickerResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course,
      const DeepCollectionEquality().hash(_lessons), pickerResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesAddCourseEventImplCopyWith<_$CoursesAddCourseEventImpl>
      get copyWith => __$$CoursesAddCourseEventImplCopyWithImpl<
          _$CoursesAddCourseEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)
        addCourse,
  }) {
    return addCourse(course, lessons, pickerResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
  }) {
    return addCourse?.call(course, lessons, pickerResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Course course, List<Lesson>? lessons,
            FilePickerResult? pickerResult)?
        addCourse,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(course, lessons, pickerResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesLoadEvent value) load,
    required TResult Function(CoursesSearchEvent value) search,
    required TResult Function(CoursesAddCourseEvent value) addCourse,
  }) {
    return addCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesLoadEvent value)? load,
    TResult? Function(CoursesSearchEvent value)? search,
    TResult? Function(CoursesAddCourseEvent value)? addCourse,
  }) {
    return addCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesLoadEvent value)? load,
    TResult Function(CoursesSearchEvent value)? search,
    TResult Function(CoursesAddCourseEvent value)? addCourse,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(this);
    }
    return orElse();
  }
}

abstract class CoursesAddCourseEvent extends CoursesEvent {
  const factory CoursesAddCourseEvent(
      {required final Course course,
      final List<Lesson>? lessons,
      final FilePickerResult? pickerResult}) = _$CoursesAddCourseEventImpl;
  const CoursesAddCourseEvent._() : super._();

  Course get course;
  List<Lesson>? get lessons;
  FilePickerResult? get pickerResult;
  @JsonKey(ignore: true)
  _$$CoursesAddCourseEventImplCopyWith<_$CoursesAddCourseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function()? empty,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function()? empty,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseStateLoading value) loading,
    required TResult Function(CourseStateLoaded value) loaded,
    required TResult Function(CourseStateEmpty value) empty,
    required TResult Function(CourseStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseStateLoading value)? loading,
    TResult? Function(CourseStateLoaded value)? loaded,
    TResult? Function(CourseStateEmpty value)? empty,
    TResult? Function(CourseStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseStateLoading value)? loading,
    TResult Function(CourseStateLoaded value)? loaded,
    TResult Function(CourseStateEmpty value)? empty,
    TResult Function(CourseStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseStateLoadingImplCopyWith<$Res> {
  factory _$$CourseStateLoadingImplCopyWith(_$CourseStateLoadingImpl value,
          $Res Function(_$CourseStateLoadingImpl) then) =
      __$$CourseStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseStateLoadingImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateLoadingImpl>
    implements _$$CourseStateLoadingImplCopyWith<$Res> {
  __$$CourseStateLoadingImplCopyWithImpl(_$CourseStateLoadingImpl _value,
      $Res Function(_$CourseStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CourseStateLoadingImpl extends CourseStateLoading {
  const _$CourseStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'CourseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function()? empty,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function()? empty,
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
    required TResult Function(CourseStateLoading value) loading,
    required TResult Function(CourseStateLoaded value) loaded,
    required TResult Function(CourseStateEmpty value) empty,
    required TResult Function(CourseStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseStateLoading value)? loading,
    TResult? Function(CourseStateLoaded value)? loaded,
    TResult? Function(CourseStateEmpty value)? empty,
    TResult? Function(CourseStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseStateLoading value)? loading,
    TResult Function(CourseStateLoaded value)? loaded,
    TResult Function(CourseStateEmpty value)? empty,
    TResult Function(CourseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CourseStateLoading extends CourseState {
  const factory CourseStateLoading() = _$CourseStateLoadingImpl;
  const CourseStateLoading._() : super._();
}

/// @nodoc
abstract class _$$CourseStateLoadedImplCopyWith<$Res> {
  factory _$$CourseStateLoadedImplCopyWith(_$CourseStateLoadedImpl value,
          $Res Function(_$CourseStateLoadedImpl) then) =
      __$$CourseStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$CourseStateLoadedImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateLoadedImpl>
    implements _$$CourseStateLoadedImplCopyWith<$Res> {
  __$$CourseStateLoadedImplCopyWithImpl(_$CourseStateLoadedImpl _value,
      $Res Function(_$CourseStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$CourseStateLoadedImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$CourseStateLoadedImpl extends CourseStateLoaded {
  const _$CourseStateLoadedImpl({final List<Course> courses = const <Course>[]})
      : _courses = courses,
        super._();

  final List<Course> _courses;
  @override
  @JsonKey()
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseState.loaded(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateLoadedImplCopyWith<_$CourseStateLoadedImpl> get copyWith =>
      __$$CourseStateLoadedImplCopyWithImpl<_$CourseStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return loaded(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function()? empty,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function()? empty,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseStateLoading value) loading,
    required TResult Function(CourseStateLoaded value) loaded,
    required TResult Function(CourseStateEmpty value) empty,
    required TResult Function(CourseStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseStateLoading value)? loading,
    TResult? Function(CourseStateLoaded value)? loaded,
    TResult? Function(CourseStateEmpty value)? empty,
    TResult? Function(CourseStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseStateLoading value)? loading,
    TResult Function(CourseStateLoaded value)? loaded,
    TResult Function(CourseStateEmpty value)? empty,
    TResult Function(CourseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CourseStateLoaded extends CourseState {
  const factory CourseStateLoaded({final List<Course> courses}) =
      _$CourseStateLoadedImpl;
  const CourseStateLoaded._() : super._();

  List<Course> get courses;
  @JsonKey(ignore: true)
  _$$CourseStateLoadedImplCopyWith<_$CourseStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseStateEmptyImplCopyWith<$Res> {
  factory _$$CourseStateEmptyImplCopyWith(_$CourseStateEmptyImpl value,
          $Res Function(_$CourseStateEmptyImpl) then) =
      __$$CourseStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseStateEmptyImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateEmptyImpl>
    implements _$$CourseStateEmptyImplCopyWith<$Res> {
  __$$CourseStateEmptyImplCopyWithImpl(_$CourseStateEmptyImpl _value,
      $Res Function(_$CourseStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CourseStateEmptyImpl extends CourseStateEmpty {
  const _$CourseStateEmptyImpl() : super._();

  @override
  String toString() {
    return 'CourseState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function()? empty,
    TResult? Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function()? empty,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseStateLoading value) loading,
    required TResult Function(CourseStateLoaded value) loaded,
    required TResult Function(CourseStateEmpty value) empty,
    required TResult Function(CourseStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseStateLoading value)? loading,
    TResult? Function(CourseStateLoaded value)? loaded,
    TResult? Function(CourseStateEmpty value)? empty,
    TResult? Function(CourseStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseStateLoading value)? loading,
    TResult Function(CourseStateLoaded value)? loaded,
    TResult Function(CourseStateEmpty value)? empty,
    TResult Function(CourseStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CourseStateEmpty extends CourseState {
  const factory CourseStateEmpty() = _$CourseStateEmptyImpl;
  const CourseStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$CourseStateErrorImplCopyWith<$Res> {
  factory _$$CourseStateErrorImplCopyWith(_$CourseStateErrorImpl value,
          $Res Function(_$CourseStateErrorImpl) then) =
      __$$CourseStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CourseStateErrorImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateErrorImpl>
    implements _$$CourseStateErrorImplCopyWith<$Res> {
  __$$CourseStateErrorImplCopyWithImpl(_$CourseStateErrorImpl _value,
      $Res Function(_$CourseStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CourseStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseStateErrorImpl extends CourseStateError {
  const _$CourseStateErrorImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateErrorImplCopyWith<_$CourseStateErrorImpl> get copyWith =>
      __$$CourseStateErrorImplCopyWithImpl<_$CourseStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function()? empty,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function()? empty,
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
    required TResult Function(CourseStateLoading value) loading,
    required TResult Function(CourseStateLoaded value) loaded,
    required TResult Function(CourseStateEmpty value) empty,
    required TResult Function(CourseStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseStateLoading value)? loading,
    TResult? Function(CourseStateLoaded value)? loaded,
    TResult? Function(CourseStateEmpty value)? empty,
    TResult? Function(CourseStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseStateLoading value)? loading,
    TResult Function(CourseStateLoaded value)? loaded,
    TResult Function(CourseStateEmpty value)? empty,
    TResult Function(CourseStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CourseStateError extends CourseState {
  const factory CourseStateError({final String? message}) =
      _$CourseStateErrorImpl;
  const CourseStateError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$CourseStateErrorImplCopyWith<_$CourseStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
