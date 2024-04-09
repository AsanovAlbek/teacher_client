// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: json['id'] as int? ?? 0,
      taskId: json['task_id'] as int? ?? 0,
      answer: json['answer'] as String? ?? '',
      rightAnswer: json['correct_answer'] as String? ?? '',
      imageUrl: json['pic_url'] as String? ?? '',
      soundUrl: json['sound_url'] as String? ?? '',
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'answer': instance.answer,
      'correct_answer': instance.rightAnswer,
      'pic_url': instance.imageUrl,
      'sound_url': instance.soundUrl,
    };
