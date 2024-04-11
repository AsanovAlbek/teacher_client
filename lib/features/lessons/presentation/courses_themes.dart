import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/constants/publication_status.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_event.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/model/mapper.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/lessons/presentation/widgets/lesson_item.dart';
import 'package:file_picker/file_picker.dart';
import 'package:teacher_client/core/widget/pickable_image.dart';

import '../../../core/model/course.dart';
import '../../../core/model/lesson.dart';
import '../../home/presentation/bloc/home_state.dart';
import '../domain/model/lesson.dart';

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
        context.read<LessonBloc>().add(LessonEvent.load(courseId: state.course?.id ?? -1));
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: Center(
              child: _CourseEditorContent(course: state.course),
            ),
          ),
        );
      },
    );
  }
}

class _CourseEditorContent extends StatefulWidget {
  final Course? course;

  const _CourseEditorContent({this.course});

  @override
  State<_CourseEditorContent> createState() => _CourseEditorContentState();
}

class _CourseEditorContentState extends State<_CourseEditorContent> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;
  FilePickerResult? _filePickerResult;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.course?.name ?? '');
    _descriptionController = TextEditingController(text: widget.course?.description ?? '');
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
              loaded: (List<LessonModel> lessons) {
                return Padding(
                  padding: const EdgeInsets.all(50).copyWith(bottom: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.course != null ? 'РЕДАКТИРОВАТЬ КУРС' : 'ДОБАВИТЬ КУРС',
                          style: Theme.of(context).textTheme.headlineLarge),
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
                                  filePickerResult: _filePickerResult,
                                  imageUrl: widget.course?.iconUrl,
                                  imageSize: 200,
                                  onPressed: () async {
                                    final image = await FilePicker.platform.pickFiles(type: FileType.image);
                                    if (image != null) {
                                      setState(() {
                                        _filePickerResult = image;
                                      });
                                      courseBloc.add(CoursesEvent.addCourse(course: homeState.course!, pickerResult: _filePickerResult, onSuccess: (course) {
                                        homeBloc.add(HomeEvent.setCourse(course));
                                      }));
                                    }
                                  },
                                ),
                                Expanded(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: TextFormField(
                                        initialValue: homeState.course!.name,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            label: const Text('Название курса'),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                                        onChanged: (text) {
                                          AppUtils.debounce(() {
                                            courseBloc.add(CoursesEvent.addCourse(
                                                course: homeBloc.state.course!.copyWith(name: text.trim()),
                                                onSuccess: (course) {
                                                  homeBloc.add(HomeEvent.setCourse(course));
                                                }));
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: TextFormField(
                                        initialValue: homeState.course!.description,
                                          textAlign: TextAlign.start,
                                          textAlignVertical: TextAlignVertical.top,
                                          minLines: 4,
                                          maxLines: 4,
                                          decoration: InputDecoration(
                                              label: const Text('Описание курса'),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                                      onChanged: (text) {
                                          AppUtils.debounce(() {
                                            courseBloc.add(CoursesEvent.addCourse(
                                                course: homeBloc.state.course!.copyWith(description: text.trim()),
                                                onSuccess: (course) {
                                                  homeBloc.add(HomeEvent.setCourse(course));
                                                }));
                                          });
                                      },
                                      ),
                                    )
                                  ]),
                                )
                              ]),
                              TextButton(
                                  onPressed: () {
                                    lessonBloc.add(LessonEvent.addLesson(
                                        courseId: homeBloc.state.course!.id!,
                                        lesson: LessonModel(),
                                        onSuccess: (lesson) {
                                          homeBloc.add(HomeEvent.setLesson(lesson));
                                          context.router.push(const TasksRoute());
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
                                            homeBloc.add(HomeEvent.setLesson(lessons[index].toData()));
                                            context.router.push(const TasksRoute());
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
