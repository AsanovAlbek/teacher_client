import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import '../../../domain/model/task.dart';
import 'deletable_item.dart';

class TypeQuestion extends StatefulWidget {
  final TaskModel task;

  const TypeQuestion({super.key, required this.task});

  @override
  State<StatefulWidget> createState() => _TypeQuestionState();
}

class _TypeQuestionState extends State<TypeQuestion> {
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
              initialValue: widget.task.answerModels.single.answer.rightAnswer,
              decoration: const InputDecoration(labelText: 'Ответ'),
              onChanged: (text) {
                AppUtils.debounce(() {
                  bloc.add(TasksEvent.setTask(
                      task: widget.task.copyWith(answerModels: [
                        widget.task.answerModels.single.copyWith(
                            answer: widget.task.answerModels.single.answer.copyWith(rightAnswer: text.trim()))
                      ])));
                });
              },
            ),
          ],
        ));
  }
}