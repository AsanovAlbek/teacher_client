import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/auth/domain/exceptions/auth_exceptions.dart';
import 'package:teacher_client/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseClient _client;

  GoTrueClient get _auth => _client.auth;

  AuthRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<void> signIn({required String email, required String password}) async {
    final signInResponse =
        await _auth.signInWithPassword(email: email, password: password);
    final uuid = signInResponse.session?.user.id;
    if (uuid != null) {
      final teacher =
          await _client.from('teachers').select().eq('id', uuid);
      log('teachers = $teacher');
      if (teacher.isEmpty) {
        signOut();
        throw UserNotTeacherException();
      }
    }
  }

  @override
  Future<void> signUp(
      {required String email,
      required String password,
      required String teacherName}) async {
    log('$email $password $teacherName');
    await _auth.signUp(email: email, password: password);
    await _client
        .from('teachers')
        .insert({'id': _auth.currentSession?.user.id, 'name': teacherName});
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  }
}
