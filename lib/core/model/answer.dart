import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {

  const factory Answer({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'task_id') @Default(0) int taskId,
    @JsonKey(name: 'answer') @Default('') String answer,
    @JsonKey(name: 'correct_answer') @Default('') String rightAnswer,
    @JsonKey(name: 'pic_url') @Default('') String imageUrl,
    @JsonKey(name: 'sound_url') @Default('') String soundUrl
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}