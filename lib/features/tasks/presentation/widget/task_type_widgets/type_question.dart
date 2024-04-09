import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';

import '../../../../../core/model/answer.dart';
import '../../../domain/model/task.dart';

class TypeQuestion extends StatefulWidget {
  final TaskModel task;
  final TasksBloc bloc;

  const TypeQuestion({super.key, required this.task, required this.bloc});

  @override
  State<StatefulWidget> createState() => _TypeQuestionState();
}

class _TypeQuestionState extends State<TypeQuestion> {
  final _taskController = TextEditingController();
  late final AnswerModel _answer;

  @override
  void initState() {
    _answer = widget.task.answerModels.single;
    _taskController.text = widget.task.task;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Column(
      children: [
        const Text('Задание'),
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
          initialValue: _answer.answer.rightAnswer,
          decoration: const InputDecoration(labelText: 'Ответ'),
          onChanged: (text) {
            AppUtils.debounce(() {
              bloc.add(TasksEvent.setTask(
                  task: widget.task.copyWith(answerModels: [
                _answer.copyWith(
                    answer: _answer.answer.copyWith(rightAnswer: text.trim()))
              ])));
            });
          },
        ),
      ],
    );
  }
}
