import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/domain/model/task.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:collection/collection.dart' show IterableExtension;

import '../../../../core/model/task/task.dart';

extension TaskToTaskModel on Task {
  TaskModel toDomain() {
    return TaskModel(
        id: id,
        taskType: TaskType.values.firstWhereOrNull((type) => type.rowTaskType == taskType) ?? TaskType.none,
        courseId: courseId,
        task: task,
        lessonId: lessonId,
        answerModels: taskAnswers.map((answer) => AnswerModel(answer: answer)).toList());
  }
}

extension TaskModelToTask on TaskModel {
  Task toDto() {
    return Task(
        id: id,
        taskType: taskType.rowTaskType,
        courseId: courseId,
        task: task,
        lessonId: lessonId,
        taskAnswers: answerModels.map((answerModel) => answerModel.answer).toList()
    );
  }
}