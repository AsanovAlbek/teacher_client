import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/core/widget/pickable_audio.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:collection/collection.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/presentation/widget/right_answer_dropdown.dart';

import '../../../domain/model/task.dart';

class FirstTaskTypeView extends StatefulWidget {
  final TaskModel task;

  const FirstTaskTypeView({super.key, required this.task});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: [
                ...widget.task.answerModels.take(2).mapIndexed((index, e) =>
                    _ImageItem(index: index, answerModel: e, task: widget.task))
              ],
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                ...widget.task.answerModels.skip(2).take(2).mapIndexed(
                    (index, e) => _ImageItem(
                        index: index + 2, answerModel: e, task: widget.task))
              ],
            ),
            const SizedBox(height: 8),
            RightAnswerSwitcher(
              task: widget.task,
              onSelected: (selection) {
                var answerModels = widget.task.answerModels.map((answerModel) {
                  return answerModel.copyWith(
                      answer: answerModel.answer.copyWith(
                          rightAnswer: (answerModel == selection).toString()));
                }).toList();
                context.read<TasksBloc>().add(TasksEvent.setTask(
                    task: widget.task.copyWith(answerModels: answerModels)));
              },
            )
          ],
        ),
      ),
    ]);
  }
}

class _ImageItem extends StatefulWidget {
  final int index;
  final AnswerModel answerModel;
  final TaskModel task;

  const _ImageItem(
      {required this.index, required this.answerModel, required this.task});

  @override
  State<_ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<_ImageItem> {
  final _images = List<FilePickerResult?>.filled(4, null);
  final _audios = List<FilePickerResult?>.filled(4, null);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PickableImage(
            imageUrl: widget.answerModel.answer.imageUrl,
            filePickerResult: _images[widget.index],
            imageSize: 250,
            onPressed: () async {
              final image =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (image != null &&
                  image.files.single.size / 1024 / 1024 >= 10) {
                Future.sync(() => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:
                            Text('Размер файла не должен превышать 10 мб'))));
              } else {
                debugPrint('pressed. Image name = ${image?.names.join()}');
                if (image != null) {
                  setState(() {
                    _images[widget.index] = image;
                  });
                  var answerModels = widget.task.answerModels;
                  answerModels[widget.index] = answerModels[widget.index]
                      .copyWith(imageFilePickerResult: _images[widget.index]);
                  debugPrint(
                      'new am = ${answerModels[widget.index].imageFilePickerResult?.names.join()}');
                  bloc.add(TasksEvent.setTask(
                      task: widget.task.copyWith(answerModels: answerModels)));
                }
              }
            },
          ),
          SizedBox(
            width: 250,
            child: PickableAudio(
              audioUrl: widget.answerModel.answer.soundUrl,
              audioFilePickerResult: _audios[widget.index],
              onPickAudioFile: () async {
                final audio =
                    await FilePicker.platform.pickFiles(type: FileType.audio);
                if (audio != null &&
                    audio.files.single.size / 1024 / 1024 >= 10) {
                  Future.sync(() =>
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Файл должен быть не более 10 мб'),
                      )));
                } else {
                  if (audio != null) {
                    setState(() {
                      _audios[widget.index] = audio;
                    });
                    var answerModels = widget.task.answerModels;
                    answerModels[widget.index] = answerModels[widget.index]
                        .copyWith(audioFilePickerResult: _audios[widget.index]);
                    bloc.add(TasksEvent.setTask(
                        task:
                            widget.task.copyWith(answerModels: answerModels)));
                  }
                }
              },
            ),
          ),
          SizedBox(
            width: 250,
            child: TextFormField(
              initialValue: widget.answerModel.answer.answer,
              decoration: const InputDecoration(label: Text('Ответ')),
              onChanged: (String text) {
                var answers = widget.task.answerModels.toList();
                answers[widget.index] = widget.answerModel.copyWith(
                    answer: widget.answerModel.answer
                        .copyWith(answer: text.trim()));
                context.read<TasksBloc>().add(TasksEvent.setTask(
                    task: widget.task.copyWith(answerModels: answers)));
              },
            ),
          )
        ],
      ),
    );
  }
}
