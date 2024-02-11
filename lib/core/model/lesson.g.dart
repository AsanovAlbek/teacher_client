// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      courseId: json['course_id'] as int? ?? 0,
      imageUrl: json['image_url'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'course_id': instance.courseId,
      'image_url': instance.imageUrl,
      'status': instance.status,
    };
