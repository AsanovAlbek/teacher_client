import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/lessons/data/repository/lessons_repository_impl.dart';
import 'package:teacher_client/features/lessons/domain/repository/lessons_repository.dart';

final getIt = GetIt.instance;

void lessonsModule() {
  getIt.registerSingleton<LessonsRepository>(
      LessonsRepositoryImpl(client: Supabase.instance.client));
}