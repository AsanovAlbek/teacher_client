import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:teacher_client/core/repository/impl/storage_repository_impl.dart';

final getIt = GetIt.instance;

void coreModule() {
  getIt.registerSingleton<StorageRepository>(
      StorageRepositoryImpl(Supabase.instance.client));
}
