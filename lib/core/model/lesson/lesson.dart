import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';

part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
      @JsonKey(name: 'id') @Default(0) int id,
      @JsonKey(name: 'created_at', includeToJson: false) @Default('') String createdAt,
      @JsonKey(name: 'name') @Default('') String name,
      @JsonKey(name: 'description') @Default('') String description,
      @JsonKey(name: 'course_id') @Default(0) int courseId,
      @JsonKey(name: 'image_url') @Default('') String imageUrl,
      @JsonKey(name: 'status') @Default('') String status}) = _Lesson;
  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}