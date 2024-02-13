import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/constants/publication_status.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/resources/colors.dart';
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
            backgroundColor: AppColors.backgroundColor,
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

  const _CourseEditorContent({this.course, required this.courseBloc});

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
          return Padding(
            padding: const EdgeInsets.all(50).copyWith(bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    widget.course != null
                        ? 'РЕДАКТИРОВАТЬ КУРС'
                        : 'ДОБАВИТЬ КУРС',
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
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () async {
                                    final image = await FilePicker.platform
                                        .pickFiles(type: FileType.image);
                                    if (image != null) {
                                      setState(() {
                                        _filePickerResult = image;
                                      });
                                    }
                                  },
                                  child: Container(
                                      color:
                                          AppColors.emptyImageBackgroundColor,
                                      width: 200,
                                      height: 200,
                                      child: widget.course != null &&
                                              (widget.course?.iconUrl
                                                      .isNotEmpty ??
                                                  false) &&
                                              _filePickerResult == null
                                          ? Image.network(
                                              widget.course?.iconUrl ?? '',
                                              fit: BoxFit.cover)
                                          : _filePickerResult != null
                                              ? Image.memory(
                                                  _filePickerResult!
                                                      .files.single.bytes!,
                                                  fit: BoxFit.fill)
                                              : const Icon(Icons.add,
                                                      color: AppColors.gray, size: 50),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: TextField(
                                        controller: _nameController,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            label: const Text('Название курса'),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: TextField(
                                        textAlign: TextAlign.start,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        minLines: 4,
                                        maxLines: 4,
                                        controller: _descriptionController,
                                        decoration: InputDecoration(
                                            label: const Text('Описание курса'),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)))),
                                  )
                                ]),
                              )
                            ]),
                            TextButton(
                                onPressed: () {
                                  lessonBloc.add(LessonEvent.addLesson(
                                      courseId: widget.course?.id ?? -1,
                                      lesson: Lesson(
                                          name: 'Тема ${lessons.length + 1}',
                                          courseId: widget.course?.id ?? 0,
                                          description:
                                              'Описание урока ${lessons.length + 1}',
                                          status: PublicationStatus
                                              .published.label)));
                                },
                                child: Text(
                                  '+ Добавить урок',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: AppColors.orange),
                                )),
                            if (lessons.isNotEmpty) ...[
                              Expanded(
                                child: ListView.separated(
                                    itemBuilder: (context, index) => LessonItem(
                                        lesson: lessons[index],
                                        onRedact: (lesson) {}),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 4),
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
                                      widget.courseBloc.add(
                                          CoursesEvent.addCourse(
                                              pickerResult: _filePickerResult,
                                              course: Course(
                                                  id: widget.course?.id,
                                                  name: _nameController.text
                                                      .trim(),
                                                  description:
                                                      _descriptionController
                                                          .text
                                                          .trim(),
                                                  status: PublicationStatus
                                                      .published.label),
                                              lessons: lessons));
                                      // Если это новый курс и пользователь добавил в него уроки
                                      AutoRouter.of(context)
                                          .navigate(const CoursesRoute());
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
  }
}
