import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:teacher_client/core/navigation/auth_navigate_guard.dart';
import 'package:teacher_client/features/auth/login/presentation/login_page.dart';
import 'package:teacher_client/features/auth/password_recovery/presentation/recover_page.dart';
import 'package:teacher_client/features/courses/presentation/courses_page.dart';
import 'package:teacher_client/features/lessons/presentation/courses_themes.dart';

import '../../features/courses/domain/bloc/course_bloc.dart';
import '../../features/home/presentation/home_page.dart';
import '../model/course.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true, guards: [AuthGuard()]),
        AutoRoute(page: RecoverRoute.page),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: CoursesRoute.page, initial: true),
          AutoRoute(page: CoursesThemesRoute.page)
        ])
      ];
}
