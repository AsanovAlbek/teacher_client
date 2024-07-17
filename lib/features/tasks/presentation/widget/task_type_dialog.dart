import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../../../../core/model/course/course.dart';
import '../../../../core/model/lesson/lesson.dart';
import '../../domain/model/answer.dart';
import '../../domain/model/task.dart';
import '../../domain/model/task_type.dart';

class TaskTypeDialog extends StatefulWidget {
  const TaskTypeDialog({super.key, required this.onAddTask, this.course, this.lesson});

  final Course? course;
  final Lesson? lesson;
  final Function(TaskModel, List<AnswerModel>) onAddTask;

  @override
  State<StatefulWidget> createState() => _TaskTypeState();
}

class _TaskTypeState extends State<TaskTypeDialog> {
  int taskType = 1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Создание задания'),
            DropdownMenu(
                initialSelection: TaskType.fourPictures.rowTaskType,
                label: const Text('Тип задания'),
                onSelected: (type) {
                  setState(() {
                    taskType = type ?? TaskType.fourPictures.rowTaskType;
                  });
                },
                dropdownMenuEntries: TaskType.values
                    .map(
                        (TaskType type) => DropdownMenuEntry<int>(value: type.rowTaskType, label: '${type.rowTaskType}: ${type.label}'))
                    .toList()
                  ..removeLast()),
            ElevatedButton(
                onPressed: () {
                  final TaskType type =
                      TaskType.values.firstWhereOrNull((t) => t.rowTaskType == taskType) ?? TaskType.none;
                  final answerModels = List<AnswerModel>.filled(type.defaultAnswersCount, AnswerModel());
                  final taskModel = TaskModel(
                      taskType: type,
                      lessonId: widget.lesson?.id ?? 0,
                      courseId: widget.course?.id ?? 0,
                      answerModels: answerModels);
                  widget.onAddTask(taskModel, answerModels);
                },
                child: const Text('Создать'))
          ],
        ),
      ),
    );
  }
}
