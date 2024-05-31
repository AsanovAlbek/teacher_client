import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/constants/publication_status.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/presentation/widgets/lesson_item.dart';
import 'package:file_picker/file_picker.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';

import '../../../core/model/course.dart';
import '../../../core/model/lesson.dart';
import '../../home/domain/home_bloc.dart';
import '../../home/domain/home_event.dart';
import '../../home/domain/home_state.dart';

@RoutePage()
class CoursesThemesPage extends StatefulWidget {
  const CoursesThemesPage({super.key});

  @override
  State<CoursesThemesPage> createState() => _CoursesThemesPageState();
}

class _CoursesThemesPageState extends State<CoursesThemesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        context.read<LessonBloc>().add(LessonEvent.load(courseId: state.course?.id ?? 0));
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: Center(
              child: _CourseEditorContent(course: state.course ?? const Course(name: 'unnamed', description: 'empty')),
            ),
          ),
        );
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

  @override
  Widget build(BuildContext context) {
    final lessonBloc = context.watch<LessonBloc>();
    final courseBloc = context.read<CourseBloc>();
    final homeBloc = context.read<HomeBloc>();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        if (context.router.canPop()) {
          context.router.maybePop();
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, homeState) {
          return lessonBloc.state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (String? message) => Center(child: Text(message ?? '')),
              loaded: (Course course, List<Lesson> lessons, FilePickerResult? filePickerResult) {
                // _nameController.text = course.name;
                // _descriptionController.text = course.description;
                return Padding(
                  padding: const EdgeInsets.all(50).copyWith(bottom: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('РЕДАКТИРОВАТЬ КУРС', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                    Expanded(
                      child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                              Row(children: [
                                PickableImage(
                                  filePickerResult: filePickerResult,
                                  imageUrl: widget.course.iconUrl,
                                  imageSize: 200,
                                  onPressed: () async {
                                    final image = await FilePicker.platform.pickFiles(type: FileType.image);
                                    if (image != null) {
                                      lessonBloc.add(LessonEvent.updateImage(filePickerResult: image));
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
                                        decoration: InputDecoration(
                                            label: const Text('Название курса'),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
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
                                          decoration: InputDecoration(
                                              label: const Text('Описание курса'),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
                                    )
                                  ]),
                                )
                              ]),
                              TextButton(
                                  onPressed: () {
                                    lessonBloc.add(LessonEvent.addLesson(
                                        courseId: course.id,
                                        lesson: const Lesson(),
                                        onSuccess: (lesson) {
                                          courseBloc.add(CoursesEvent.updateCourse(
                                            pickerResult: filePickerResult,
                                              course: course.copyWith(
                                                  name: _nameController.text,
                                                  description: _descriptionController.text,
                                                  status: _nameController.text.isNotEmpty &&
                                                          _descriptionController.text.isNotEmpty
                                                      ? PublicationStatus.published.label
                                                      : PublicationStatus.draft.label),
                                            onSuccess: (_) {
                                              courseBloc.add(const CoursesEvent.load());
                                            }
                                          ));
                                          homeBloc.add(HomeEvent.setLesson(lesson: lesson, onSuccess: (_) {
                                            context.router.navigate(const TasksRoute());
                                          }));
                                        }));
                                  },
                                  child: Text(
                                    '+ Добавить урок',
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.orange),
                                  )),
                              if (lessons.isNotEmpty) ...[
                                Expanded(
                                  child: ListView.separated(
                                      itemBuilder: (context, index) => LessonItem(
                                          lesson: lessons[index],
                                          onRedact: (lesson) {
                                            courseBloc.add(CoursesEvent.updateCourse(
                                                pickerResult: filePickerResult,
                                                course: course.copyWith(
                                                    name: _nameController.text,
                                                    description: _descriptionController.text,
                                                    status: _nameController.text.isNotEmpty &&
                                                        _descriptionController.text.isNotEmpty
                                                        ? PublicationStatus.published.label
                                                        : PublicationStatus.draft.label),
                                            onSuccess: (_) {
                                              homeBloc.add(HomeEvent.setLesson(lesson: lessons[index], onSuccess: (_) {
                                                context.router.navigate(const TasksRoute());
                                              }));
                                            }));
                                          }),
                                      separatorBuilder: (context, index) => const SizedBox(height: 4),
                                      itemCount: lessons.length),
                                )
                              ] else ...[
                                const Expanded(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Вы ещё не добавили уроки'),
                                    ),
                                  ),
                                )
                              ],
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        courseBloc.add(CoursesEvent.updateCourse(
                                            pickerResult: filePickerResult,
                                            course: course.copyWith(
                                                name: _nameController.text,
                                                description: _descriptionController.text,
                                                status: _nameController.text.isNotEmpty &&
                                                    _descriptionController.text.isNotEmpty
                                                    ? PublicationStatus.published.label
                                                    : PublicationStatus.draft.label)));
                                        AutoRouter.of(context).navigate(const CoursesRoute());
                                      },
                                      child: const Text('Сохранить')),
                                ),
                              )
                            ]),
                          )),
                    )
                  ]),
                );
              });
        },
      ),
    );
  }
}
