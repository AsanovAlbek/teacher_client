import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';

import '../../../../../core/model/answer.dart';
import '../../../../../core/model/task.dart';
import '../../../domain/bloc/tasks_bloc.dart';
import '../../../domain/model/answer.dart';
import '../../../domain/model/task.dart';
import 'package:collection/collection.dart';

class FillWordsQuestion extends StatefulWidget {
  final TaskModel task;
  final TasksBloc bloc;

  const FillWordsQuestion({super.key, required this.task, required this.bloc});

  @override
  State<StatefulWidget> createState() => _FillWordsState();
}

class _FillWordsState extends State<FillWordsQuestion> {
  final _taskController = TextEditingController();

  @override
  void initState() {
    _taskController.text = widget.task.task;
    super.initState();
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Column(
      children: [
        const Text(
            'В ответе введите слова через запятые, для обозначения пропуска используйте ****'),
        const SizedBox(height: 8),
        TextFormField(
          controller: _taskController,
          decoration: const InputDecoration(labelText: 'Задание'),
          maxLines: 1,
          onChanged: (text) {
            AppUtils.debounce(() {
              bloc.add(TasksEvent.setTask(
                  task: widget.task.copyWith(task: text.trim())));
            });
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue:
              widget.task.answerModels.map((e) => e.answer.answer).join(','),
          decoration: const InputDecoration(labelText: 'Варианты ответа'),
          onChanged: (text) {
            debugPrint(text.trim().split(', ').join(", "));
            AppUtils.debounce(() {
              bloc.add(
                  TasksEvent.removeAnswersFromTask(task: widget.task.toDto()));
              bloc.add(TasksEvent.setTask(
                  task: widget.task.copyWith(
                      answerModels: text
                          .trim()
                          .split(',')
                          .map((e) => AnswerModel(
                              answer:
                                  Answer(taskId: widget.task.id, answer: e)))
                          .toList())));
            });
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: widget.task.answerModels.firstWhereOrNull((element) => bool.tryParse(element.answer.rightAnswer) ?? false)?.answer.answer ?? '',
          decoration: const InputDecoration(labelText: 'Ответ'),
          maxLines: 1,
          onChanged: (text) {
            AppUtils.debounce(() {
              final task = widget.task;
              bloc.add(TasksEvent.setTask(
                  task: task.copyWith(
                      answerModels: task.answerModels
                          .map((answerModel) => answerModel.copyWith(
                              answer: answerModel.answer.copyWith(
                                  rightAnswer:
                                      (answerModel.answer.answer == text.trim())
                                          .toString()
                                          .toLowerCase())))
                          .toList())));
            });
          },
        )
      ],
    );
  }
}
