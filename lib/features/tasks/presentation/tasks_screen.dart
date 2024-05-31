import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/model/answer.dart';
import 'package:teacher_client/features/tasks/domain/model/task_type.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/task_container.dart';

import '../../../core/model/course.dart';
import '../../../core/model/lesson.dart';
import '../../home/domain/home_bloc.dart';
import '../domain/model/task.dart';
import 'package:collection/collection.dart';

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
    return Scaffold(
      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {
              context.router.maybePop();
            }
          },
          child: BlocProvider(
              create: (context) => TasksBloc(
                  lessonsRepository: di<LessonsRepository>(),
                  tasksRepository: di<TasksRepository>(),
                  storageRepository: di<StorageRepository>())
                ..add(TasksEvent.load(lesson: context.read<HomeBloc>().state.lesson ?? const Lesson(name: 'unnamed'))),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
                  return state.when(
                      loading: () => const Center(child: CircularProgressIndicator()),
                      load: (Course course, Lesson lesson, List<TaskModel> tasks, UpdatingState updatingState) =>
                          TasksScreenLoaded(
                              course: course,
                              lesson: lesson,
                              tasks: tasks,
                              isUpdating: updatingState == UpdatingState.update),
                      error: (String? message) => Center(child: Text(message ?? 'Неизвестная ошибка')));
                }),
              )))),
    );
  }
}

class TasksScreenLoaded extends StatefulWidget {
  final Course course;
  final Lesson lesson;
  final List<TaskModel> tasks;
  final bool isUpdating;

  const TasksScreenLoaded(
      {super.key, required this.course, required this.lesson, required this.tasks, required this.isUpdating});

  @override
  State<StatefulWidget> createState() => _TasksLoadedState();
}

class _TasksLoadedState extends State<TasksScreenLoaded> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _nameController.text = widget.lesson.name;
      _descriptionController.text = widget.lesson.description;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final taskWidgets = widget.tasks.map((task) => taskWidgetsFactory(task)).toList();
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
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Название урока'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                          labelText: 'Описание урока',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder()),
                      minLines: 1,
                      maxLines: 5)
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _showTaskCreateDialog(context, widget.lesson);
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.lightGreen),
                  foregroundColor: WidgetStateProperty.all(Colors.white)),
              child: const Text('Добавить задание')),
          const SizedBox(width: 8),
          ElevatedButton(
              onPressed: () {
                context.read<LessonBloc>().add(LessonEvent.deleteLesson(lesson: widget.lesson));
                context.read<CourseBloc>().add(const CoursesEvent.load());
                context.router.maybePop();
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                  foregroundColor: WidgetStateProperty.all(Colors.white)),
              child: const Text('Удалить урок'))
        ]),
        const SizedBox(height: 8),
        ...[
          if (widget.tasks.isEmpty)
            const Expanded(child: Center(child: Text('Пока нет заданий')))
          else
            Expanded(
              child: Center(
                child: ListView.separated(
                    itemCount: taskWidgets.length,
                    separatorBuilder: (context, index) => Container(height: 8, color: Colors.grey),
                    itemBuilder: (context, index) => Center(child: taskWidgets[index])),
              ),
            ),
        ],
        const SizedBox(height: 8),
        ElevatedButton.icon(
            label: Text(widget.isUpdating ? 'Сохраняем' : 'Сохранить'),
            icon: widget.isUpdating
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                        color: Colors.white, backgroundColor: AppColors.orange, strokeWidth: 3))
                : const SizedBox.shrink(),
            onPressed: () {
              final tasksBloc = context.read<TasksBloc>();
              final lessonBloc = context.read<LessonBloc>();
              //final snackBar = SnackBar(content: Row());
              lessonBloc.add(LessonEvent.updateLesson(
                  courseId: widget.course.id,
                  lesson: widget.lesson.copyWith(name: _nameController.text, description: _descriptionController.text),
                  onSuccess: (_) {
                    lessonBloc.add(LessonEvent.load(courseId: widget.course.id));
                    tasksBloc.add(TasksEvent.updateAllTasks(
                        tasks: widget.tasks,
                        onSuccess: (_) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Сохранено')));
                        }));
                  },
                  onError: (exception) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Ошибка сохранения')));
                  }));
            })
      ],
    );
  }

  void _showTaskCreateDialog(BuildContext buildContext, Lesson lesson) {
    showDialog(
        context: buildContext,
        builder: (context) {
          int taskType = 1;
          final homeState = buildContext.read<HomeBloc>().state;
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
                          .map((TaskType type) => DropdownMenuEntry<int>(value: type.rowTaskType, label: type.label))
                          .toList()
                        ..removeLast()),
                  ElevatedButton(
                      onPressed: () {
                        final TaskType type =
                            TaskType.values.firstWhereOrNull((t) => t.rowTaskType == taskType) ?? TaskType.none;
                        buildContext.read<TasksBloc>().add(TasksEvent.addTask(
                            lesson: homeState.lesson ?? const Lesson(),
                            task: TaskModel(
                                taskType: type,
                                lessonId: homeState.lesson?.id ?? 0,
                                courseId: homeState.course?.id ?? 0,
                                answerModels: List<AnswerModel>.filled(type.defaultAnswersCount, AnswerModel())),
                            onSuccess: (task, answers) {
                              buildContext.read<TasksBloc>().add(TasksEvent.load(lesson: homeState.lesson!));
                            }));
                        context.router.maybePop();
                      },
                      child: const Text('Создать'))
                ],
              ),
            ),
          );
        });
  }
}
