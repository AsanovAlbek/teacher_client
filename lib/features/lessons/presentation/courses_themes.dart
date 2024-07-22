import 'dart:js_interop';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/constants/publication_status.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/presentation/widgets/lesson_item.dart';
import 'package:file_picker/file_picker.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';

import '../../../core/model/course/course.dart';
import '../../../core/model/lesson/lesson.dart';
import '../../home/domain/home_bloc.dart';
import '../../home/domain/home_event.dart';
import '../../home/domain/home_state.dart';

@RoutePage()
class CoursesThemesPage extends StatelessWidget {
  const CoursesThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return BlocBuilder<CourseBloc, CourseState>(
            builder: (context, courseState) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.backgroundColor,
              body: Center(
                child: _CourseEditorContent(
                  course: (courseState as CourseStateLoaded).courses.firstWhere(
                      (course) => course.id == (state.course?.id ?? 0)),
                ),
              ),
            ),
          );
        });
      },
    );
  }
}

class _CourseEditorContent extends StatefulWidget {
  final Course course;

  const _CourseEditorContent({required this.course});

  @override
  State<_CourseEditorContent> createState() => _CourseEditorContentState();
}

class _CourseEditorContentState extends State<_CourseEditorContent> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      context
          .read<LessonBloc>()
          .add(LessonEvent.lessonsStream(course: widget.course));
      _nameController.text = widget.course.name;
      _descriptionController.text = widget.course.description;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void goToTasks(BuildContext context, Lesson lesson) {
    context.read<HomeBloc>().add(HomeEvent.setLesson(
        lesson: lesson,
        onSuccess: (_) {
          context.router.navigate(const TasksRoute());
        }));
  }

  @override
  Widget build(BuildContext context) {
    final lessonBloc = context.watch<LessonBloc>();

    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) return;
          context.router.navigate(const CoursesRoute());
        },
        child: lessonBloc.state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (String? message) => Center(child: Text(message ?? '')),
            loaded: (Course course, List<Lesson> lessons,
                FilePickerResult? filePickerResult, bool isTitleEditable) {
              return Padding(
                padding: const EdgeInsets.all(50).copyWith(bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('РЕДАКТИРОВАТЬ КУРС',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    LessonNameAndDescriptionFields(
                                        lessonBloc: lessonBloc,
                                        nameController: _nameController,
                                        isTitleEditable: isTitleEditable,
                                        filePickerResult: filePickerResult,
                                        course: course,
                                        descriptionController:
                                            _descriptionController),
                                    SwitchListTile.adaptive(
                                        value: !isTitleEditable,
                                        title: const Text(
                                            'Редактировать описание'),
                                        onChanged: (editable) {
                                          context.read<LessonBloc>().add(
                                              const LessonEvent
                                                  .changeFieldsEditable());
                                        }),
                                    ElevatedButton(
                                        onPressed: () {
                                          AutoRouter.of(context).navigate(
                                              const CollaboratorsRoute());
                                        },
                                        child:
                                            const Text('Управление доступом')),
                                    TextButton(
                                        onPressed: () {
                                          lessonBloc.add(LessonEvent.addLesson(
                                              courseId: course.id,
                                              lesson: const Lesson(),
                                              onSuccess: (lesson) {
                                                goToTasks(context, lesson);
                                              }));
                                        },
                                        child: Text(
                                          '+ Добавить урок',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: AppColors.orange),
                                        )),
                                    if (lessons.isNotEmpty) ...[
                                      Expanded(
                                        child: ListView.separated(
                                            itemBuilder: (context, index) =>
                                                LessonItem(
                                                    lesson: lessons[index],
                                                    onRedact: (lesson) {
                                                      goToTasks(
                                                          context, lesson);
                                                    }),
                                            separatorBuilder:
                                                (context, index) =>
                                                    const SizedBox(height: 4),
                                            itemCount: lessons.length),
                                      )
                                    ] else ...[
                                      const Expanded(
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                                'Вы ещё не добавили уроки'),
                                          ),
                                        ),
                                      )
                                    ],
                                    const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                      ),
                                    )
                                  ]),
                            )),
                      )
                    ]),
              );
            }));
  }
}

class LessonNameAndDescriptionFields extends StatelessWidget {
  const LessonNameAndDescriptionFields({
    super.key,
    required this.course,
    required this.filePickerResult,
    required this.isTitleEditable,
    required this.lessonBloc,
    required TextEditingController nameController,
    required TextEditingController descriptionController,
  })  : _nameController = nameController,
        _descriptionController = descriptionController;

  final LessonBloc lessonBloc;
  final Course course;
  final TextEditingController _nameController;
  final TextEditingController _descriptionController;
  final FilePickerResult? filePickerResult;
  final bool isTitleEditable;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      PickableImage(
        filePickerResult: filePickerResult,
        imageUrl: course.iconUrl,
        imageSize: 200,
        onPressed: () async {
          final image =
              await FilePicker.platform.pickFiles(type: FileType.image);
          if (image != null) {
            Future.sync(() {
              context.read<CourseBloc>().add(CoursesEvent.updateCourse(
                  course: course, pickerResult: image));
            });

            // lessonBloc.add(LessonEvent.updateImage(filePickerResult: image));
          }
        },
      ),
      Expanded(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              controller: _nameController,
              maxLines: 1,
              readOnly: isTitleEditable,
              decoration: InputDecoration(
                  label: const Text('Название курса'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
              onChanged: (_) {
                AppUtils().debounce(() {
                  context.read<CourseBloc>().add(CoursesEvent.updateCourse(
                      course:
                          course.copyWith(name: _nameController.text.trim())));
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              controller: _descriptionController,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              minLines: 4,
              maxLines: 4,
              readOnly: isTitleEditable,
              decoration: InputDecoration(
                  label: const Text('Описание курса'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
              onChanged: (_) {
                AppUtils().debounce(() {
                  context.read<CourseBloc>().add(CoursesEvent.updateCourse(
                      course: course.copyWith(
                          description: _descriptionController.text.trim())));
                });
              },
            ),
          )
        ]),
      )
    ]);
  }
}
