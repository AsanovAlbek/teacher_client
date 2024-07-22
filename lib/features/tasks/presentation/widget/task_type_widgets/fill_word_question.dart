import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import '../../../domain/bloc/tasks_bloc.dart';
import '../../../domain/model/task.dart';

import 'deletable_item.dart';

class FillWordsQuestion extends StatefulWidget {
  final TaskModel task;

  const FillWordsQuestion({super.key, required this.task});

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
    return DeletableItem(
        deleteClick: () {
          context
              .read<TasksBloc>()
              .add(TasksEvent.removeTask(taskId: widget.task.id));
        },
        child: Column(
          children: [
            const Text(
                'В ответе введите слова через запятые, для обозначения пропуска используйте ****'),
            const SizedBox(height: 8),
            TextFormField(
              controller: _taskController,
              decoration: const InputDecoration(labelText: 'Задание'),
              maxLines: 1,
              onChanged: (text) {
                AppUtils().debounce(() {
                  bloc.add(TasksEvent.updateTask(
                      task: widget.task.copyWith(task: text.trim())));
                });
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: widget.task.answerModels.first.answer.answer,
              decoration: const InputDecoration(labelText: 'Варианты ответа'),
              onChanged: (text) {
                debugPrint(text.trim().split(', ').join(", "));
                final currentAnswer = widget.task.answerModels.first;
                AppUtils().debounce(() {
                  bloc.add(TasksEvent.updateAnswer(
                      answer: currentAnswer.answer.copyWith(answer: text.trim()),
                      taskId: widget.task.id));
                });
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: widget.task.answerModels.first.answer.rightAnswer,
              decoration: const InputDecoration(labelText: 'Ответ'),
              maxLines: 1,
              onChanged: (text) {
                AppUtils().debounce(() {
                  final task = widget.task;
                  final currentAnswer = widget.task.answerModels.first;
                  bloc.add(TasksEvent.updateAnswer(
                      answer: currentAnswer.answer.copyWith(rightAnswer: text.trim()),
                      taskId: task.id));
                });
              },
            )
          ],
        ));
  }
}
