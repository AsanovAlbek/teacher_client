import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';
@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'icon_url') @Default('') String iconUrl,
    @JsonKey(name: 'rating') @Default(0) double rating,
    @JsonKey(name: 'price') @Default(0) double price,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(includeFromJson: false) @Default(false) bool isTeacherCourse
  }) = _Course;
  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}