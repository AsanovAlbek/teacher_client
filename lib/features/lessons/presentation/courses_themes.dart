import 'dart:developer';
import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/lessons/presentation/widgets/lesson_item.dart';
import 'package:file_picker/file_picker.dart';

import '../../../core/model/course.dart';
import '../../../core/model/lesson.dart';

@RoutePage()
class CoursesThemesPage extends StatelessWidget {
  final Course? course;
  final CourseBloc courseBloc;

  const CoursesThemesPage({super.key, this.course, required this.courseBloc});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CourseBloc>.value(value: courseBloc),
          BlocProvider(
              create: (context) =>
                  LessonBloc(repository: GetIt.I<LessonsRepository>())
                    ..add(LessonEvent.load(courseId: course?.id ?? -1)))
        ],
        child: SafeArea(
          child: Scaffold(
            body: Center(
              child:
                  _CourseEditorContent(course: course, courseBloc: courseBloc),
            ),
          ),
        ));
  }
}

class _CourseEditorContent extends StatefulWidget {
  final Course? course;
  final CourseBloc courseBloc;

  const _CourseEditorContent(
      {super.key, this.course, required this.courseBloc});

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
    _descriptionController =
        TextEditingController(text: widget.course?.description ?? '');
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
    return lessonBloc.state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (String? message) => Center(child: Text(message ?? '')),
      loaded: (List<Lesson> lessons) {
        return Column(
          children: [
            Text(
                widget.course != null ? 'Редактировать курс' : 'Добавить курс'),
            Table(
              children: [
                TableRow(
                  children: [
                    const Text('Название курса'),
                    TextField(controller: _nameController, maxLines: 1)
                  ],
                ),
                TableRow(children: [
                  const Text('Описание курса'),
                  TextField(controller: _descriptionController)
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () async {
                  final image =
                      await FilePicker.platform.pickFiles(type: FileType.image);
                  if (image != null) {
                    setState(() {
                      _filePickerResult = image;
                    });
                  }
                },
                child: Container(
                    color: Colors.grey,
                    width: 150,
                    height: 150,
                    child: widget.course != null &&
                            (widget.course?.iconUrl.isNotEmpty ?? false) &&
                            _filePickerResult == null
                        ? Image.network(widget.course?.iconUrl ?? '')
                        : _filePickerResult != null
                            ? Image.memory(
                                _filePickerResult!.files.single.bytes!)
                            : const Icon(Icons.add)),
              ),
            ),
            TextButton(
                onPressed: () {
                  lessonBloc.add(LessonEvent.addLesson(
                      courseId: widget.course?.id ?? -1,
                      lesson: Lesson(
                          name: 'Тема ${lessons.length + 1}',
                          courseId: widget.course?.id ?? 0,
                          description: 'Описание урока ${lessons.length + 1}',
                          status: 'Опубликовано')));
                },
                child: const Text('+ Добавить урок')),
            if (lessons.isNotEmpty) ...[
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => LessonItem(
                        lesson: lessons[index], onRedact: (lesson) {}),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 4),
                    itemCount: lessons.length),
              )
            ] else ...[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Вы ещё не добавили уроки'),
              )
            ],
            ElevatedButton(
                onPressed: () async {
                  widget.courseBloc.add(CoursesEvent.addCourse(
                      pickerResult: _filePickerResult,
                      course: Course(
                          id: widget.course?.id,
                          name: _nameController.text.trim(),
                          description: _descriptionController.text.trim(),
                          status: 'Опубликован'),
                      lessons: lessons));
                  // Если это новый курс и пользователь добавил в него уроки
                  AutoRouter.of(context).navigate(const CoursesRoute());
                },
                child: const Text('Сохранить'))
          ],
        );
      },
    );
  }
}
