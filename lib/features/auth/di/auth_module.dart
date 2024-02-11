import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/auth/data/repository/auth_repository_impl.dart';
import 'package:teacher_client/features/auth/domain/repository/auth_repository.dart';

final getIt = GetIt.instance;
void authModule() {
  final client = Supabase.instance.client;
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl(client));
}