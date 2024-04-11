import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_state.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/model/mapper.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/task_container.dart';

import '../../../core/model/lesson.dart';
import '../domain/model/task.dart';
import 'package:collection/collection.dart';
import 'package:teacher_client/features/lessons/domain/model/mapper.dart';

@RoutePage()
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final di = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(
          lessonsRepository: di<LessonsRepository>(),
          tasksRepository: di<TasksRepository>(),
          storageRepository: di<StorageRepository>()),
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) return;
          if (context.router.canPop()) {
            context.router.maybePop();
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (BuildContext context, HomeState homeState) {
            final bloc = context.read<TasksBloc>();
            return Scaffold(
              body: Center(
                  child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: BlocBuilder<TasksBloc, TasksState>(
                    builder: (context, state) {
                  return state.when(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      load: (Lesson lesson, List<TaskModel> tasks) {
                        final taskWidgets = tasks
                            .map((task) => taskWidgetsFactory(task))
                            .toList();
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        initialValue: homeState.lesson?.name ?? '',
                                        decoration: const InputDecoration(
                                            labelText: 'Название урока'),
                                        onChanged: (text) {
                                          AppUtils.debounce(() => context
                                              .read<LessonBloc>()
                                              .add(LessonEvent.addLesson(courseId: homeState.course!.id!, lesson: homeState.lesson!.toDomain())));
                                        },
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        initialValue:
                                            homeState.lesson?.description ?? '',
                                        decoration: const InputDecoration(
                                            labelText: 'Описание урока',
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder()),
                                        minLines: 1,
                                        maxLines: 5,
                                        onChanged: (text) {
                                          AppUtils.debounce(() => context
                                              .read<LessonBloc>()
                                              .add(LessonEvent.addLesson(
                                                  lesson: lesson.copyWith(
                                                      description: text).toDomain(), courseId: homeState.course!.id!)));
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    _showTaskCreateDialog(context, homeState.lesson!);
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.lightGreen),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                  child: const Text('Добавить задание')),
                              const SizedBox(width: 8),
                              ElevatedButton(
                                  onPressed: () {
                                    context.read<LessonBloc>().add(
                                        LessonEvent.deleteLesson(
                                            lesson: homeState.lesson!.toDomain()));
                                    context.router.maybePop();
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.red),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                  child: const Text('Удалить урок'))
                            ]),
                            const SizedBox(height: 8),
                            ...[
                              if (tasks.isEmpty)
                                const Expanded(
                                    child:
                                        Center(child: Text('Пока нет заданий')))
                              else
                                Expanded(
                                  child: Center(
                                    child: ListView.separated(
                                        itemCount: taskWidgets.length,
                                        separatorBuilder: (context, index) =>
                                            Container(
                                                height: 8, color: Colors.grey),
                                        itemBuilder: (context, index) =>
                                            Center(child: taskWidgets[index])),
                                  ),
                                ),
                            ],
                            // const SizedBox(height: 8),
                            // ElevatedButton(
                            //     onPressed: () {
                            //       final tasksBloc = context.read<TasksBloc>();
                            //       final lessonBloc = context.read<LessonBloc>();
                            //       tasksBloc
                            //           .add(TasksEvent.saveTasks(tasks: tasks));
                            //
                            //       ScaffoldMessenger.of(context).showSnackBar(
                            //           const SnackBar(
                            //               content: Text('Сохранено')));
                            //     },
                            //     child: const Text('Сохранить'))
                          ],
                        );
                      },
                      error: (String? message) =>
                          Center(child: Text(message ?? 'Неизвестная ошибка')));
                }),
              )),
            );
          },
        ),
      ),
    );
  }

  void _showTaskCreateDialog(BuildContext buildContext, Lesson lesson) {
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
                          .toList()
                        ..removeLast()),
                  ElevatedButton(
                      onPressed: () {
                        final TaskType type = TaskType.values.firstWhereOrNull(
                                (t) => t.rowTaskType == taskType) ??
                            TaskType.none;
                        buildContext.read<TasksBloc>().add(TasksEvent.upsertTask(
                            task: TaskModel(
                                taskType: type,
                                lessonId: lesson.id ?? 0,
                                courseId: lesson.courseId,
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
