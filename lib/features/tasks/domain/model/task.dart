import 'package:teacher_client/features/tasks/domain/model/task_type.dart';

import 'answer.dart';
import 'package:equatable/equatable.dart';

class TaskModel with EquatableMixin {
  final int id;
  final TaskType taskType;
  final int courseId;
  final String task;
  final int lessonId;
  final List<AnswerModel> answerModels;

  TaskModel(
      {this.id = 0,
      this.taskType = TaskType.none,
      this.courseId = 0,
      this.task = '',
      this.lessonId = 0,
      this.answerModels = const <AnswerModel>[]});

  TaskModel copyWith(
      {int? id,
      TaskType? taskType,
      int? courseId,
      String? task,
      int? lessonId,
      List<AnswerModel>? answerModels}) {
    return TaskModel(
        id: id ?? this.id,
        taskType: taskType ?? this.taskType,
        courseId: courseId ?? this.courseId,
        task: task ?? this.task,
        lessonId: lessonId ?? this.lessonId,
        answerModels: answerModels ?? this.answerModels);
  }

  @override
  List<Object?> get props => [id, taskType, courseId, task, lessonId, answerModels];

  @override
  bool? get stringify => true;
}
