import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/courses/data/courses_repository_impl.dart';
import 'package:teacher_client/features/courses/domain/repository/courses_repository.dart';

final getIt = GetIt.instance;

void coursesModule() {
  getIt.registerSingleton<CoursesRepository>(
      CoursesRepositoryImpl(Supabase.instance.client));
}
