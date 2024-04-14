import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/core/utils/utils.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';
import 'package:teacher_client/features/courses/presentation/widgets/course_theme_item.dart';
import 'package:teacher_client/features/home/domain/home_bloc.dart';

import '../../../core/model/course.dart';
import '../../home/domain/home_event.dart';

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
          uploadRepository: GetIt.I<StorageRepository>())
        ..add(const CoursesEvent.load()),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Scrollbar(
            controller: scrollController,
            trackVisibility: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: _CoursesPageContent(scrollController: scrollController),
            ),
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
    final textTheme = Theme.of(context).textTheme;
    final bloc = context.watch<CourseBloc>();
    final homeBloc = context.read<HomeBloc>();
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child:
                Text('Мои курсы'.toUpperCase(), style: textTheme.headlineLarge),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder()),
                    onChanged: (text) {
                      AppUtils.debounce(
                          () => bloc.add(CoursesEvent.search(query: text)));
                    }),
              ),
              const SizedBox(width: 8),
              TextButton(
                  onPressed: () {
                    bloc.add(CoursesEvent.addCourse(course: const Course(), onSuccess: (course) {
                      homeBloc.add(HomeEvent.setCourse(course));
                      AutoRouter.of(context)
                          .navigate(const CoursesThemesRoute());
                    }, onError: (e) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Ошибка $e')));
                    }));

                  },
                  child: Text('+ Добавить курс'.toUpperCase(),
                      style: textTheme.bodyMedium
                          ?.copyWith(color: AppColors.orange))),
            ],
          ),
          bloc.state.when(
              loading: () => const Expanded(
                  child: Center(child: CircularProgressIndicator())),
              empty: () => const Text('Здесь пока ничего нет'),
              error: (String? message) => Text(message ?? 'Неизвестная ошибка'),
              loaded: (List<Course> courses) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CourseThemeItem(
                            course: courses[index],
                            onRedact: (course) {
                              homeBloc.add(HomeEvent.setCourse(course));
                              context.router.navigate(const CoursesThemesRoute());
                            });
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 4);
                      },
                      itemCount: courses.length,
                      controller: scrollController,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
