// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesPage(),
      );
    },
    CoursesThemesRoute.name: (routeData) {
      final args = routeData.argsAs<CoursesThemesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CoursesThemesPage(
          key: args.key,
          course: args.course,
          courseBloc: args.courseBloc,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RecoverRoute.name: (routeData) {
      final args = routeData.argsAs<RecoverRouteArgs>(
          orElse: () => const RecoverRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecoverPage(
          key: args.key,
          fromIncomingRecoverLink: args.fromIncomingRecoverLink,
        ),
      );
    },
    TasksRoute.name: (routeData) {
      final args = routeData.argsAs<TasksRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TasksScreen(
          key: args.key,
          lesson: args.lesson,
          lessonBloc: args.lessonBloc,
        ),
      );
    },
  };
}

/// generated route for
/// [CoursesPage]
class CoursesRoute extends PageRouteInfo<void> {
  const CoursesRoute({List<PageRouteInfo>? children})
      : super(
          CoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoursesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CoursesThemesPage]
class CoursesThemesRoute extends PageRouteInfo<CoursesThemesRouteArgs> {
  CoursesThemesRoute({
    Key? key,
    Course? course,
    required CourseBloc courseBloc,
    List<PageRouteInfo>? children,
  }) : super(
          CoursesThemesRoute.name,
          args: CoursesThemesRouteArgs(
            key: key,
            course: course,
            courseBloc: courseBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'CoursesThemesRoute';

  static const PageInfo<CoursesThemesRouteArgs> page =
      PageInfo<CoursesThemesRouteArgs>(name);
}

class CoursesThemesRouteArgs {
  const CoursesThemesRouteArgs({
    this.key,
    this.course,
    required this.courseBloc,
  });

  final Key? key;

  final Course? course;

  final CourseBloc courseBloc;

  @override
  String toString() {
    return 'CoursesThemesRouteArgs{key: $key, course: $course, courseBloc: $courseBloc}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecoverPage]
class RecoverRoute extends PageRouteInfo<RecoverRouteArgs> {
  RecoverRoute({
    Key? key,
    bool fromIncomingRecoverLink = false,
    List<PageRouteInfo>? children,
  }) : super(
          RecoverRoute.name,
          args: RecoverRouteArgs(
            key: key,
            fromIncomingRecoverLink: fromIncomingRecoverLink,
          ),
          initialChildren: children,
        );

  static const String name = 'RecoverRoute';

  static const PageInfo<RecoverRouteArgs> page =
      PageInfo<RecoverRouteArgs>(name);
}

class RecoverRouteArgs {
  const RecoverRouteArgs({
    this.key,
    this.fromIncomingRecoverLink = false,
  });

  final Key? key;

  final bool fromIncomingRecoverLink;

  @override
  String toString() {
    return 'RecoverRouteArgs{key: $key, fromIncomingRecoverLink: $fromIncomingRecoverLink}';
  }
}

/// generated route for
/// [TasksScreen]
class TasksRoute extends PageRouteInfo<TasksRouteArgs> {
  TasksRoute({
    Key? key,
    required Lesson lesson,
    required LessonBloc lessonBloc,
    List<PageRouteInfo>? children,
  }) : super(
          TasksRoute.name,
          args: TasksRouteArgs(
            key: key,
            lesson: lesson,
            lessonBloc: lessonBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static const PageInfo<TasksRouteArgs> page = PageInfo<TasksRouteArgs>(name);
}

class TasksRouteArgs {
  const TasksRouteArgs({
    this.key,
    required this.lesson,
    required this.lessonBloc,
  });

  final Key? key;

  final Lesson lesson;

  final LessonBloc lessonBloc;

  @override
  String toString() {
    return 'TasksRouteArgs{key: $key, lesson: $lesson, lessonBloc: $lessonBloc}';
  }
}
