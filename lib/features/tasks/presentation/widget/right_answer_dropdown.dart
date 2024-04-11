import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teacher_client/features/tasks/domain/model/task.dart';
import 'package:collection/collection.dart';

import '../../domain/model/answer.dart';

class RightAnswerSwitcher extends StatelessWidget {
  final TaskModel task;
  final String? label;
  final Function(AnswerModel)? onSelected;
  final double? padding;
  const RightAnswerSwitcher({super.key, required this.task, this.onSelected, this.padding, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding != null ? EdgeInsets.all(padding!) : EdgeInsets.zero,
      child: DropdownMenu(
        width: MediaQuery.of(context).size.width / 5,
        initialSelection: task.answerModels.firstWhereOrNull(
                (answerModel) => bool.tryParse(
                answerModel.answer.rightAnswer.toLowerCase()) == true),
        label: Text(label ?? 'Правильный ответ'),
        dropdownMenuEntries: [
          ...task.answerModels.map((answer) => DropdownMenuEntry(
              value: answer, label: answer.answer.answer))
        ],
        onSelected: (AnswerModel? selection) {
          if (selection != null) {
            onSelected?.call(selection);
          }
        },
      ),
    );
  }

}