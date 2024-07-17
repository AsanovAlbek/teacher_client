import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/core/resources/images.dart';
import 'package:teacher_client/features/courses/domain/bloc/course_bloc.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';
import 'package:teacher_client/features/home/domain/home_event.dart';
import 'package:teacher_client/features/home/domain/home_state.dart';
import 'package:teacher_client/features/lessons/domain/bloc/lesson_bloc.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';
import 'package:teacher_client/features/preview_lesson/domain/bloc%20copy/quiz_bloc.dart';

import '../domain/home_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final di = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(
            create: (context) => CourseBloc(
                coursesRepository: di<CoursesRepository>(),
                uploadRepository: di<StorageRepository>())),
        BlocProvider(
            create: (context) => LessonBloc(
                repository: di<LessonsRepository>(),
                storageRepository: di<StorageRepository>())),
        BlocProvider(create: (context) => QuizBloc())
      ],
      child: Scaffold(
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox.square(
                          dimension: 100,
                          child: CircleAvatar(child: AppImages.person)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Supabase.instance.client.auth.signOut();
                          AutoRouter.of(context).replace(const LoginRoute());
                        },
                        child: const Text('Выйти')),
                  ],
                ),
              ),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                context.read<HomeBloc>().add(HomeEvent.load());
                return Expanded(
                    child: Stack(children: [
                  const AutoRouter(),
                  TextButton.icon(
                    onPressed: () => context.router.back(),
                    label: const Text('Назад'),
                    icon: const Icon(Icons.arrow_back),
                  ),
                ]));
              }
            ),
          ],
        ),
      ),
    );
  }
}