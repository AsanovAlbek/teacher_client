import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/repository/image_upload_repository.dart';
import 'package:teacher_client/core/repository/impl/image_upload_repository_impl.dart';

final getIt = GetIt.instance;

void coreModule() {
  getIt.registerSingleton<ImageUploadRepository>(
      ImageUploadRepositoryImpl(Supabase.instance.client));
}
