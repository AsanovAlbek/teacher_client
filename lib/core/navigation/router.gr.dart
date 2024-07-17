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
    CollaboratorsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CollaboratorsPage(),
      );
    },
    CoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesPage(),
      );
    },
    CoursesThemesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesThemesPage(),
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
    PreviewTasksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PreviewTasksScreen(),
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TasksScreen(),
      );
    },
  };
}

/// generated route for
/// [CollaboratorsPage]
class CollaboratorsRoute extends PageRouteInfo<void> {
  const CollaboratorsRoute({List<PageRouteInfo>? children})
      : super(
          CollaboratorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CollaboratorsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class CoursesThemesRoute extends PageRouteInfo<void> {
  const CoursesThemesRoute({List<PageRouteInfo>? children})
      : super(
          CoursesThemesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoursesThemesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [PreviewTasksScreen]
class PreviewTasksRoute extends PageRouteInfo<void> {
  const PreviewTasksRoute({List<PageRouteInfo>? children})
      : super(
          PreviewTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreviewTasksRoute';

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
class TasksRoute extends PageRouteInfo<void> {
  const TasksRoute({List<PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
