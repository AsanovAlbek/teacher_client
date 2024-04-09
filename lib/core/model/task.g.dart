// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as int? ?? 0,
      courseId: json['course_id'] as int? ?? 0,
      task: json['task'] as String? ?? '',
      taskType: json['task_type'] as int? ?? 0,
      taskAnswers: (json['answers'] as List<dynamic>?)
              ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Answer>[],
      lessonId: json['lesson'] as int? ?? 0,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'task': instance.task,
      'task_type': instance.taskType,
      'answers': instance.taskAnswers,
      'lesson': instance.lessonId,
    };
