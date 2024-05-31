import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/deletable_item.dart';

import '../../../../../core/model/answer.dart';
import '../../../../../core/utils/utils.dart';
import '../../../domain/bloc/tasks_bloc.dart';
import '../../../domain/model/task.dart';

class MakeSentenceQuestion extends StatefulWidget {
  final TaskModel task;

  const MakeSentenceQuestion(
      {super.key, required this.task});

  @override
  State<StatefulWidget> createState() => _MakeSentenceState();
}

class _MakeSentenceState extends State<MakeSentenceQuestion> {
  final _sentenceController = TextEditingController();
  final _translatedSentenceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _sentenceController.text = widget.task.task.trim().split('*').first.replaceAll('#', ', ');
    _translatedSentenceController.text = widget.task.task.trim().split('*').last.replaceAll('#', ', ');
  }

  @override
  void dispose() {
    super.dispose();
    _sentenceController.dispose();
    _translatedSentenceController.dispose();
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
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('В ответе введите слова через запятые'),
          const SizedBox(height: 8),
          TextFormField(
            controller: _sentenceController,
            decoration: const InputDecoration(labelText: 'Предложение'),
            maxLines: 1,
            onChanged: (text) {
              AppUtils.debounce(() {
                final task = widget.task;
                final taskText =
                    "${_sentenceController.text.replaceAll(r"[\s\W]", '#').trim()}*${_translatedSentenceController.text.replaceAll(r"[\s\W]", '#').trim()}";
                bloc.add(
                    TasksEvent.setTask(task: task.copyWith(task: taskText)));
              });
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _translatedSentenceController,
            decoration: const InputDecoration(labelText: 'Ответ'),
            maxLines: 1,
            onChanged: (text) {
              AppUtils.debounce(() {
                final task = widget.task;
                final taskText =
                    "${_sentenceController.text.replaceAll(r"[\s\W]", '#').trim()}*${_translatedSentenceController.text.replaceAll(r"[\s\W]", '#').trim()}";
                bloc.add(
                    TasksEvent.setTask(task: task.copyWith(task: taskText)));
              });
            },
          ),
          TextFormField(
            initialValue: widget.task.answerModels.map((e) => e.answer.answer).join(','),
            decoration: const InputDecoration(labelText: 'Варианты ответа'),
            onChanged: (text) {
              debugPrint(text.trim().split(', ').join(", "));
              AppUtils.debounce(() {
                bloc.add(TasksEvent.removeAnswersFromTask(task: widget.task.toDto()));
                bloc.add(TasksEvent.setTask(
                    task: widget.task.copyWith(answerModels: text
                        .trim()
                        .split(',')
                        .map((e) => AnswerModel(answer: Answer(taskId: widget.task.id, answer: e))).toList()
                    )));
              });
            },
          )
        ],
      ),
    );
  }
}
