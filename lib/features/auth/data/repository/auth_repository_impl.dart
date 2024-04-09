import 'dart:html';
import 'package:flutter/cupertino.dart';
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
    debugPrint('uuid $uuid');
    if (uuid != null) {
      final teacher = await _client.from('teachers').select().eq('id', uuid);
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
    await _auth.signUp(email: email, password: password);
    await _client
        .from('teachers')
        .insert({'id': _auth.currentSession?.user.id, 'name': teacherName});
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  }

  @override
  Future<void> recoverPassword(String email) async {
    final location = window.location;
    final link =
        '${location.protocol}//${location.host}/#/recover-route?fromIncomingRecoverLink=true';
    _auth.resetPasswordForEmail(email, redirectTo: link);
  }

  @override
  Future<void> updateUserPassword(String password) async {
    _auth.updateUser(UserAttributes(password: password));
  }
}
