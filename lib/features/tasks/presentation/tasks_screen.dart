import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';
import 'package:teacher_client/features/home/domain/home_state.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/preview_lesson/domain/bloc/quiz_bloc.dart';
import 'package:teacher_client/features/tasks/domain/bloc/tasks_bloc.dart';
import 'package:teacher_client/features/tasks/domain/mapper/tasks_mapper.dart';
import 'package:teacher_client/features/tasks/domain/repository/tasks_repository.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_dialog.dart';
import 'package:teacher_client/features/tasks/presentation/widget/task_type_widgets/task_container.dart';

import '../../../core/model/course/course.dart';
import '../../../core/model/lesson/lesson.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (!didPop) return;
            context.router.navigate(const CoursesThemesRoute());
          },
          child:
              BlocBuilder<HomeBloc, HomeState>(builder: (context, homeState) {
            return BlocBuilder<LessonBloc, LessonState>(
                builder: (context, lessonState) {
              return BlocProvider(
                create: (context) => TasksBloc(
                    lessonsRepository: di<LessonsRepository>(),
                    tasksRepository: di<TasksRepository>(),
                    storageRepository: di<StorageRepository>())
                  ..add(TasksEvent.tasksStream(
                      lesson: (lessonState as LessonLoadedState)
                          .lessons
                          .firstWhere((lesson) =>
                              lesson.id == (homeState.lesson?.id ?? 0)))),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: BlocBuilder<TasksBloc, TasksState>(
                      builder: (context, state) {
                    return state.when(
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        load: (Course course,
                                Lesson lesson,
                                List<TaskModel> tasks,
                                UpdatingState updatingState,
                                bool isTitleEditable,
                                FilePickerResult? filePickerResult) =>
                            TasksScreenLoaded(
                                course: course,
                                lesson: lesson,
                                tasks: tasks,
                                isTitleEditable: isTitleEditable,
                                filePickerResult: filePickerResult,
                                scaffoldKey: _scaffoldKey,
                                isUpdating:
                                    updatingState == UpdatingState.update),
                        error: (String? message) => Center(
                            child: Text(message ?? 'Неизвестная ошибка')));
                  }),
                )),
              );
            });
          })),
    );
  }
}

class TasksScreenLoaded extends StatefulWidget {
  final Course course;
  final Lesson lesson;
  final List<TaskModel> tasks;
  final bool isUpdating;
  final bool isTitleEditable;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final FilePickerResult? filePickerResult;

  const TasksScreenLoaded(
      {super.key,
      required this.course,
      required this.lesson,
      required this.tasks,
      required this.isUpdating,
      required this.isTitleEditable,
      required this.scaffoldKey,
      required this.filePickerResult});

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
      context
          .read<TasksBloc>()
          .add(TasksEvent.tasksStream(lesson: widget.lesson));
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
    final taskWidgets = widget.tasks
        .mapIndexed((index, task) => ExpansionTile(
            title: Text(
                '№ ${index + 1}. Тип ${task.taskType.rowTaskType}. ${task.task}'),
            children: [taskWidgetsFactory(task)]))
        .toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(children: [
          PickableImage(
            filePickerResult: widget.filePickerResult,
            imageSize: 200,
            imageUrl: widget.lesson.imageUrl,
            onPressed: () async {
              final image =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (image != null) {
                debugPrint('file size = ${image.files.single.size}');
                if (AppUtils.checkFileMemoryLimit(
                    fileBytesSize: image.files.single.size,
                    limit: 10,
                    memoryLimitType: MemoryLimitType.mb)) {
                  Future.sync((() => context.read<LessonBloc>().add(
                      LessonEvent.updateLesson(
                          courseId: widget.course.id,
                          lesson: widget.lesson,
                          filePickerResult: image))));
                } else {
                  Future.sync(() => context.showSnackBar(
                      message: 'Превышен размер файла (более 10 мб)'));
                }
              }
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    readOnly: widget.isTitleEditable,
                    decoration:
                        const InputDecoration(labelText: 'Название урока'),
                    onChanged: (_) {
                      AppUtils().debounce(() {
                        context.read<LessonBloc>().add(LessonEvent.updateLesson(
                            courseId: widget.course.id,
                            lesson: widget.lesson
                                .copyWith(name: _nameController.text.trim())));
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                      controller: _descriptionController,
                      readOnly: widget.isTitleEditable,
                      decoration: const InputDecoration(
                          labelText: 'Описание урока',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder()),
                      minLines: 1,
                      onChanged: (_) {
                        AppUtils().debounce(() {
                          context.read<LessonBloc>().add(
                              LessonEvent.updateLesson(
                                  courseId: widget.course.id,
                                  lesson: widget.lesson.copyWith(
                                      description:
                                          _descriptionController.text.trim())));
                        });
                      },
                      maxLines: 5),
                  SwitchListTile.adaptive(
                      value: !widget.isTitleEditable,
                      title: const Text('Редактировать описание'),
                      onChanged: (editable) {
                        context
                            .read<TasksBloc>()
                            .add(const TasksEvent.changeFieldsEditable());
                      }),
                  ElevatedButton(
                      onPressed: () {
                        context.read<QuizBloc>().add(QuizEvent.loading(
                            lesson: widget.lesson,
                            tasks: widget.tasks
                                .map((task) => task.toDto())
                                .toList(),
                            ifLessonEmpty: () {},
                            isTrial: false));
                        context.router.navigate(const PreviewTasksRoute());
                      },
                      child: const Text('Протестировать')),
                  const SizedBox(
                    height: 8,
                  )
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
                context.read<LessonBloc>().add(LessonEvent.deleteLesson(
                    lesson: widget.lesson,
                    onSuccess: (lesson) {
                      context.router.back();
                    }));
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
                    separatorBuilder: (context, index) =>
                        Container(height: 8, color: Colors.grey),
                    itemBuilder: (context, index) =>
                        Center(child: taskWidgets[index])),
              ),
            ),
        ],
      ],
    );
  }

  void _showTaskCreateDialog(BuildContext buildContext, Lesson lesson) {
    showDialog(
        context: buildContext,
        builder: (context) {
          return TaskTypeDialog(
              onAddTask: (taskModel, answers) {
                buildContext.read<TasksBloc>().add(TasksEvent.addTask(
                    lesson: widget.lesson,
                    task: taskModel,
                    onSuccess: (task, answers) {
                      buildContext.showSnackBar(
                          message: 'Задание добавлено успешно');
                      buildContext
                          .read<TasksBloc>()
                          .add(TasksEvent.tasksStream(lesson: widget.lesson));
                    },
                    onError: (error) {
                      buildContext.showSnackBar(message: 'Ошибка $error');
                    }));
                Navigator.of(context).pop();
              },
              course: widget.course,
              lesson: widget.lesson);
        });
  }
}
