import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/model/answer.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/task_container.dart';

import '../../../core/model/lesson.dart';
import '../../../core/model/task.dart';
import '../domain/model/task.dart';
import 'package:collection/collection.dart';

@RoutePage()
class TasksScreen extends StatefulWidget {
  final Lesson lesson;
  final LessonBloc lessonBloc;

  const TasksScreen(
      {super.key, required this.lesson, required this.lessonBloc});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LessonBloc>.value(value: widget.lessonBloc),
        BlocProvider(create: (context) {
          final bloc = TasksBloc(
              lessonsRepository: GetIt.I<LessonsRepository>(),
              tasksRepository: GetIt.I<TasksRepository>(),
              storageRepository: GetIt.I<StorageRepository>());
          if (widget.lesson.id != null) {
            bloc.add(TasksEvent.load(lesson: widget.lesson));
          } else {
            bloc.add(TasksEvent.createLesson(lesson: widget.lesson));
          }

          return bloc;
        })
      ],
      child: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
            return state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                load: (Lesson lesson, List<TaskModel> tasks) {
                  final taskWidgets = tasks
                      .map((task) => taskWidgetsFactory(
                          task, BlocProvider.of<TasksBloc>(context)))
                      .toList();
                  return Column(
                    children: [
                      Row(children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  initialValue: widget.lesson.name ?? '',
                                  decoration: const InputDecoration(
                                      labelText: 'Название урока'),
                                  onChanged: (text) {
                                    AppUtils.debounce(() => context
                                        .read<TasksBloc>()
                                        .add(TasksEvent.setLesson(
                                            lesson:
                                                lesson.copyWith(name: text))));
                                  },
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  initialValue: widget.lesson.description ?? '',
                                  decoration: const InputDecoration(
                                      labelText: 'Описание урока',
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder()),
                                  minLines: 1,
                                  maxLines: 5,
                                  onChanged: (text) {
                                    AppUtils.debounce(() => context
                                        .read<TasksBloc>()
                                        .add(TasksEvent.setLesson(
                                            lesson: lesson.copyWith(
                                                description: text))));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _showTaskCreateDialog(context);
                            },
                            style: Theme.of(context)
                                .elevatedButtonTheme
                                .style
                                ?.copyWith(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightGreen),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                            child: const Text('Добавить задание')),
                        const SizedBox(width: 8),
                        ElevatedButton(
                            onPressed: () {
                              context.read<LessonBloc>().add(
                                  LessonEvent.deleteLesson(
                                      lesson: widget.lesson));
                              AutoRouter.of(context).pop();
                            },
                            style: Theme.of(context)
                                .elevatedButtonTheme
                                .style
                                ?.copyWith(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                            child: const Text('Удалить урок'))
                      ]),
                      const SizedBox(height: 8),
                      ...[
                        if (tasks.isEmpty)
                          const Expanded(
                              child: Center(child: Text('Пока нет заданий')))
                        else
                          Expanded(
                            child: ListView.separated(
                                itemCount: taskWidgets.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 8),
                                itemBuilder: (context, index) =>
                                    taskWidgets[index]),
                          ),
                      ],
                      const SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {
                            context
                                .read<TasksBloc>()
                                .add(TasksEvent.saveTasks(tasks: tasks));
                            context.read<LessonBloc>().add(
                                LessonEvent.addLesson(
                                    courseId: widget.lesson.courseId,
                                    lesson: widget.lesson));
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Сохранено')));
                          },
                          child: const Text('Сохранить'))
                    ],
                  );
                },
                error: (String? message) =>
                    Center(child: Text(message ?? 'Неизвестная ошибка')));
          }),
        )),
      ),
    );
  }

  void _showTaskCreateDialog(BuildContext buildContext) {
    showDialog(
        context: buildContext,
        builder: (context) {
          int taskType = 1;
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Создание задания'),
                  DropdownMenu(
                      initialSelection: TaskType.fourPictures.rowTaskType,
                      label: const Text('Тип задания'),
                      onSelected: (type) {
                        setState(() {
                          taskType = type ?? TaskType.fourPictures.rowTaskType;
                        });
                      },
                      dropdownMenuEntries: TaskType.values
                          .map((TaskType type) => DropdownMenuEntry<int>(
                              value: type.rowTaskType, label: type.label))
                          .toList()..removeLast()),
                  ElevatedButton(
                      onPressed: () {
                        final TaskType type = TaskType.values.firstWhereOrNull(
                                (t) => t.rowTaskType == taskType) ??
                            TaskType.none;
                        buildContext.read<TasksBloc>().add(TasksEvent.addTask(
                            lessonId: widget.lesson.id ?? 0,
                            task: TaskModel(
                                taskType: type,
                                lessonId: widget.lesson.id ?? 0,
                                courseId: widget.lesson.courseId,
                                answerModels: List<AnswerModel>.filled(
                                    type.defaultAnswersCount, AnswerModel()))));
                        Navigator.of(context).pop(buildContext);
                      },
                      child: const Text('Создать'))
                ],
              ),
            ),
          );
        });
  }
}
