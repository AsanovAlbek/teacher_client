import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/collaborators/data/repository/collaborators_repository_impl.dart';
import 'package:teacher_client/features/collaborators/domain/repository/collaborators_repository.dart';

final di = GetIt.I;

void collaboratorsModule() {
  di.registerLazySingleton<CollaboratorsRepository>(() {
    return CollaboratorsRepositoryImpl(client: Supabase.instance.client);
  });
}
