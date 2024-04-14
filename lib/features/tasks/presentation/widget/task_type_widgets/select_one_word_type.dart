import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart';
import '../../../domain/bloc/tasks_bloc.dart';
import '../../../domain/model/answer.dart';
import '../../../domain/model/task.dart';
import 'package:collection/collection.dart';

class SelectOneWordType extends StatefulWidget {
  final TaskModel task;

  const SelectOneWordType({super.key, required this.task});

  @override
  State<SelectOneWordType> createState() => _SelectOneWordTypeState();
}

class _SelectOneWordTypeState extends State<SelectOneWordType> {
  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        _selectedIndex = widget.task.answerModels.indexWhere((element) =>
        bool.tryParse(element.answer.rightAnswer.toLowerCase()) ?? false);
        if (_selectedIndex != null && _selectedIndex! < 0) {
          _selectedIndex = null;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
                onPressed: () {
                  context
                      .read<TasksBloc>()
                      .add(TasksEvent.removeTask(taskId: widget.task.id));
                },
                icon: const Icon(Icons.delete, color: Colors.red)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  TextFormField(
                      initialValue: widget.task.task,
                      decoration: const InputDecoration(
                          label: Text('Задание'),
                          fillColor: Colors.white,
                          filled: true),
                      onChanged: (text) {
                        AppUtils.debounce(() {
                          bloc.add(TasksEvent.setTask(
                              task: widget.task.copyWith(task: text.trim())));
                        });
                      }),
                  Expanded(
                      child: ListView(children: [
                        ...widget.task.answerModels
                            .mapIndexed((index, answer) => _answerCard(index, answer))
                      ]))
                ],
              ),
            ),
          ),
        ]
    );
  }

  Widget _answerCard(int index, AnswerModel answerModel) {
    final bloc = context.read<TasksBloc>();
    return RadioListTile(
      value: index,
      groupValue: _selectedIndex,
      onChanged: (selection) {
        setState(() {
          _selectedIndex = selection;
          bloc.add(TasksEvent.setTask(
              task: widget.task.copyWith(
                  answerModels: widget.task.answerModels.mapIndexed((i, e) {
                    return e.copyWith(
                        answer: e.answer.copyWith(
                            rightAnswer:
                            (_selectedIndex == i).toString()));
                  }).toList())));
        });
      },
      title: TextFormField(
        initialValue: answerModel.answer.answer,
        onChanged: (text) {
          AppUtils.debounce(() {
            bloc.add(TasksEvent.setTask(
                task: widget.task.copyWith(
                    answerModels: widget.task.answerModels.map((e) {
                      if (answerModel.answer == e.answer) {
                        return e.copyWith(
                            answer: e.answer.copyWith(answer: text));
                      }
                      return e;
                    }).toList())));
          });
        },
      ),
    );
  }
}