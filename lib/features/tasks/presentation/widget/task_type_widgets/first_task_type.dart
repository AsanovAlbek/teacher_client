import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:collection/collection.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/presentation/widget/right_answer_dropdown.dart';

import '../../../domain/model/task.dart';


class FirstTaskTypeView extends StatefulWidget {
  final TaskModel task;
  final TasksBloc bloc;

  const FirstTaskTypeView({super.key, required this.task, required this.bloc});

  @override
  State<StatefulWidget> createState() => _FirstTaskTypeState();
}

class _FirstTaskTypeState extends State<FirstTaskTypeView> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextFormField(
                initialValue: widget.task.task,
                decoration: const InputDecoration(
                    label: Text('Задание'),
                    fillColor: Colors.white,
                    filled: true),
                onChanged: (text) {
                  AppUtils.debounce(() {
                    context.read<TasksBloc>().add(TasksEvent.setTask(
                        task: widget.task.copyWith(task: text.trim())));
                  });
                },
              ),
            ),
            Flexible(
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  ...widget.task.answerModels
                      .mapIndexed((index, e) => _ImageItem(index: index, answerModel: e,task: widget.task))
                ],
              ),
            ),
            const SizedBox(height: 8),
            RightAnswerSwitcher(task: widget.task, onSelected: (selection) {
                var answerModels =
                widget.task.answerModels.map((answerModel) {
                  return answerModel.copyWith(
                      answer: answerModel.answer.copyWith(
                          rightAnswer: (answerModel == selection).toString()));
                }).toList();
                context.read<TasksBloc>().add(TasksEvent.setTask(
                    task:
                    widget.task.copyWith(answerModels: answerModels)));
            },)
          ],
        ),
      ),
    ]);
  }
}

class _ImageItem extends StatelessWidget {
  final int index;
  final AnswerModel answerModel;
  final TaskModel task;

  const _ImageItem({required this.index, required this.answerModel, required this.task});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PickableImage(
            imageUrl: answerModel.answer.imageUrl,
            filePickerResult: answerModel.imageFilePickerResult,
            imageSize: 250,
            onPressed: () async {
              final image =
              await FilePicker.platform.pickFiles(type: FileType.image);
              debugPrint('pressed. Image name = ${image?.names.join()}');
              if (image != null) {
                var answerModels = task.answerModels;
                answerModels[index] =
                    answerModel.copyWith(imageFilePickerResult: image);
                debugPrint('new am = ${answerModels[index].imageFilePickerResult?.names.join()}');
                bloc.add(TasksEvent.setTask(
                    task: task.copyWith(answerModels: answerModels)));
              }
            },
          ),
          SizedBox(
            width: 250,
            child: TextFormField(
              initialValue: answerModel.answer.answer,
              decoration: const InputDecoration(
                label: Text('Ответ'),
              ),
              onChanged: (String text) {
                AppUtils.debounce(() {
                  var answers = task.answerModels.toList();
                  answers[answers.indexOf(answerModel)] = answerModel.copyWith(
                      answer: answerModel.answer.copyWith(answer: text.trim()));
                  context.read<TasksBloc>().add(TasksEvent.setTask(
                      task: task.copyWith(answerModels: answers)));
                });
              },
            ),
          )
        ],
      ),
    );
  }

}
