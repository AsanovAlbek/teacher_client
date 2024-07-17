import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teacher_client/core/model/answer/answer.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {

  const factory Task({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'course_id') @Default(0) int courseId,
    @JsonKey(name: 'task') @Default('') String task,
    @JsonKey(name: 'task_type') @Default(0) int taskType,
    @JsonKey(name: 'answers') @Default(<Answer>[]) List<Answer> taskAnswers,
    @JsonKey(name: 'lesson') @Default(0) int lessonId
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}