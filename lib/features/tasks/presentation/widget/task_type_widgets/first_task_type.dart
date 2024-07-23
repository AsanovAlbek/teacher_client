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
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/deletable_item.dart';

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
    return NewDeletableItem(
        deleteClick: () {
          context
              .read<TasksBloc>()
              .add(TasksEvent.removeTask(taskId: widget.task.id));
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    AppUtils().debounce(() {
                      context.read<TasksBloc>().add(TasksEvent.updateTask(
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
                      _ImageItem(
                          index: index, answerModel: e, task: widget.task))
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
                  for (var answerModel in widget.task.answerModels) {
                    final answerModelUpdated = answerModel.copyWith(
                        answer: answerModel.answer.copyWith(
                            rightAnswer:
                                (answerModel == selection).toString()));
                    context.read<TasksBloc>().add(TasksEvent.updateAnswer(
                        answer: answerModelUpdated.answer,
                        taskId: widget.task.id));
                  }
                },
              )
            ],
          ),
        ));
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
              final isFileSizeValid = AppUtils.checkFileMemoryLimit(
                  fileBytesSize: image?.files.first.size ?? 0,
                  limit: 10,
                  memoryLimitType: MemoryLimitType.mb);
              if (image != null && !isFileSizeValid) {
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
                  bloc.add(TasksEvent.updateAnswer(
                      answer: widget.answerModel.answer,
                      taskId: widget.task.id,
                      image: image));
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
                final isFileSizeValid = AppUtils.checkFileMemoryLimit(
                    fileBytesSize: audio?.files.first.size ?? 0,
                    limit: 10,
                    memoryLimitType: MemoryLimitType.mb);
                if (audio != null && !isFileSizeValid) {
                  Future.sync(() =>
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Файл должен быть не более 10 мб'),
                      )));
                } else {
                  if (audio != null) {
                    setState(() {
                      _audios[widget.index] = audio;
                    });
                    bloc.add(TasksEvent.updateAnswer(
                        answer: widget.answerModel.answer,
                        taskId: widget.task.id,
                        audio: audio));
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
                AppUtils().debounce(() {
                  context.read<TasksBloc>().add(TasksEvent.updateAnswer(
                      answer: widget.answerModel.answer
                          .copyWith(answer: text.trim()),
                      taskId: widget.task.id));
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
