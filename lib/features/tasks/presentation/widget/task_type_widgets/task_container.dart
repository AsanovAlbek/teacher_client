import 'package:flutter/material.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/fill_word_question.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/make_sentence_question.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/select_one_word_type.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/type_missing_word_question.dart';
import '../../../domain/model/task.dart';
import 'first_task_type.dart';
import 'type_question.dart';

Widget taskWidgetsFactory(TaskModel task) => switch(task.taskType) {
  TaskType.fourPictures => FirstTaskTypeView(task: task),
  TaskType.threeAnswersSingleSelection => SelectOneWordType(task: task),
  TaskType.typeTranslate => TypeQuestion(task: task),
  TaskType.makeSentenceByWords => MakeSentenceQuestion(task: task),
  TaskType.fillPassByWords => FillWordsQuestion(task: task),
  TaskType.fillPassByType => TypeMissingWordQuestion(task: task),
  TaskType.none => Container(height: 100, width: 100, color: Colors.blueAccent),
};