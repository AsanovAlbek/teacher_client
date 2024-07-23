import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart';
import '../../../domain/bloc/tasks_bloc.dart';
import '../../../domain/model/answer.dart';
import '../../../domain/model/task.dart';
import 'deletable_item.dart';

class TypeMissingWordQuestion extends StatefulWidget {
  final TaskModel task;

  const TypeMissingWordQuestion({super.key, required this.task});

  @override
  State<StatefulWidget> createState() => _TypeMissingWordState();
}

class _TypeMissingWordState extends State<TypeMissingWordQuestion> {
  final _taskController = TextEditingController();
  late final AnswerModel _answer;

  @override
  void initState() {
    _answer = widget.task.answerModels.single;
    _taskController.text = _answer.answer.rightAnswer;
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
    return NewDeletableItem(
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
                  bloc.add(TasksEvent.updateAnswer(
                      taskId: widget.task.id,
                      answer:
                          _answer.answer.copyWith(rightAnswer: text.trim())));
                });
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: widget.task.task,
              decoration: const InputDecoration(
                  labelText: 'Ответ (на месте пропусков ****)'),
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
              initialValue: _answer.answer.answer,
              decoration: const InputDecoration(
                  labelText: 'Пропущенные слова (через запятую)'),
              maxLines: 1,
              onChanged: (text) {
                AppUtils().debounce(() {
                  bloc.add(TasksEvent.updateAnswer(
                      taskId: widget.task.id,
                      answer: _answer.answer.copyWith(answer: text.trim())));
                });
              },
            )
          ],
        ));
  }
}
