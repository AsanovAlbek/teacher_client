import 'package:flutter/material.dart';
import 'package:teacher_client/core/constants/supa_const.dart';
import 'package:teacher_client/core/di/core_module.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/resources/colors.dart';
import 'package:teacher_client/core/resources/fonts.dart';
import 'package:teacher_client/core/resources/themes.dart';
import 'package:teacher_client/features/auth/di/auth_module.dart';
import 'package:teacher_client/features/courses/di/courses_module.dart';
import 'package:teacher_client/features/lessons/di/lessons_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: SupabaseConst.supabaseUrl,
      anonKey: SupabaseConst.supabaseKey,
      authOptions:
          const FlutterAuthClientOptions(authFlowType: AuthFlowType.pkce));
  coreModule();
  authModule();
  coursesModule();
  lessonsModule();
  runApp(const TeacherApp());
}

class TeacherApp extends StatefulWidget {
  const TeacherApp({super.key});

  @override
  State<StatefulWidget> createState() => TeacherAppState();
}

class TeacherAppState extends State<TeacherApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: AppFonts.ptSans,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            elevatedButtonTheme: AppThemes.elevatedButtonTheme,
            textButtonTheme: AppThemes.textButtonTheme,
            textTheme: AppThemes.textTheme),
        routerConfig: _appRouter.config());
  }
}
