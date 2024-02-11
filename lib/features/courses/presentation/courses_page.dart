import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/repository/image_upload_repository.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';
import 'package:teacher_client/features/courses/presentation/widgets/course_theme_item.dart';

import '../../../core/model/course.dart';

@RoutePage()
class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseBloc(
          coursesRepository: GetIt.I<CoursesRepository>(),
          uploadRepository: GetIt.I<ImageUploadRepository>())
        ..add(const CoursesEvent.load()),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Scrollbar(
            controller: scrollController,
            trackVisibility: true,
            child: _CoursesPageContent(scrollController: scrollController),
          ),
        ),
      ),
    );
  }
}

class _CoursesPageContent extends StatelessWidget {
  final ScrollController scrollController;

  const _CoursesPageContent({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CourseBloc>();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text('Мои курсы'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      AutoRouter.of(context)
                          .navigate(CoursesThemesRoute(courseBloc: bloc));
                    },
                    child: const Text('+ Добавить курс')),
              ],
            ),
            const SizedBox(height: 8),
            TextField(onChanged: (text) {
              AppUtils.debounce(
                  () => bloc.add(CoursesEvent.search(query: text)));
            }),
            bloc.state.when(
                loading: () => const Expanded(
                    child: Center(child: CircularProgressIndicator())),
                empty: () => const Text('Здесь пока ничего нет'),
                error: (String? message) =>
                    Text(message ?? 'Неизвестная ошибка'),
                loaded: (List<Course> courses) {
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CourseThemeItem(
                                course: courses[index],
                                onRedact: (course) {
                                  AutoRouter.of(context).navigate(
                                      CoursesThemesRoute(
                                          course: course, courseBloc: bloc));
                                });
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 4);
                          },
                          itemCount: courses.length,
                          controller: scrollController,
                        ))
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
