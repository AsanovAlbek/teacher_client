// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', includeToJson: false)
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  bool get isTeacherCourse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at', includeToJson: false) String createdAt,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'status') String status,
      @JsonKey(includeFromJson: false) bool isTeacherCourse});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? rating = null,
    Object? price = null,
    Object? status = null,
    Object? isTeacherCourse = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isTeacherCourse: null == isTeacherCourse
          ? _value.isTeacherCourse
          : isTeacherCourse // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at', includeToJson: false) String createdAt,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'status') String status,
      @JsonKey(includeFromJson: false) bool isTeacherCourse});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? rating = null,
    Object? price = null,
    Object? status = null,
    Object? isTeacherCourse = null,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isTeacherCourse: null == isTeacherCourse
          ? _value.isTeacherCourse
          : isTeacherCourse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'created_at', includeToJson: false) this.createdAt = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'icon_url') this.iconUrl = '',
      @JsonKey(name: 'rating') this.rating = 0,
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(includeFromJson: false) this.isTeacherCourse = false});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  final String createdAt;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  @JsonKey(name: 'rating')
  final double rating;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(includeFromJson: false)
  final bool isTeacherCourse;

  @override
  String toString() {
    return 'Course(id: $id, createdAt: $createdAt, name: $name, description: $description, iconUrl: $iconUrl, rating: $rating, price: $price, status: $status, isTeacherCourse: $isTeacherCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isTeacherCourse, isTeacherCourse) ||
                other.isTeacherCourse == isTeacherCourse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, name, description,
      iconUrl, rating, price, status, isTeacherCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'created_at', includeToJson: false) final String createdAt,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'icon_url') final String iconUrl,
      @JsonKey(name: 'rating') final double rating,
      @JsonKey(name: 'price') final double price,
      @JsonKey(name: 'status') final String status,
      @JsonKey(includeFromJson: false)
      final bool isTeacherCourse}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  String get createdAt;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  @JsonKey(name: 'rating')
  double get rating;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(includeFromJson: false)
  bool get isTeacherCourse;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
