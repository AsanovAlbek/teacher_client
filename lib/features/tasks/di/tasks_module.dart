import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/tasks/data/repository/tasks_repository_impl.dart';

import '../domain/repository/tasks_repository.dart';

final di = GetIt.instance;
void tasksModule() {
  di.registerSingleton<TasksRepository>(TasksRepositoryImpl(client: Supabase.instance.client));
}