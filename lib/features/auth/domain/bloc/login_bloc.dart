import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/features/auth/domain/exceptions/auth_exceptions.dart';
import 'package:teacher_client/features/auth/login/login_page_state.dart';

import '../../domain/repository/auth_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _repository;

  LoginBloc({required AuthRepository authRepository})
      : _repository = authRepository,
        super(const LoginState.loaded(isPasswordMasked: false)) {
    on<LoginSignInEvent>(_signIn);
    on<LoginSignUpEvent>(_signUp);
    on<LoginChangePasswordMaskedEvent>(_changePasswordMasked);
    on<LoginChagePageStateEvent>(_changePageState);
    on<LoginSignOutEvent>(_signOut);
    on<LoginPasswordRecoveryEvent>(_passwordRecovery);
    on<LoginUpdatePasswordEvent>(_updatePassword);
  }

  FutureOr<void> _signIn(
      LoginSignInEvent event, Emitter<LoginState> emit) async {
    try {
      await _repository.signIn(email: event.email, password: event.password);
      event.onSuccess?.call();
    } on AuthException {
      event.onError?.call('Нет подключения к интернету');
    } on UserNotTeacherException {
      event.onError?.call('Ошибка входа');
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      event.onError?.call('Нет подключения к интернету');
    }
  }

  FutureOr<void> _changePasswordMasked(
      LoginChangePasswordMaskedEvent event, Emitter<LoginState> emit) {
    final loadedState = state as LoginLoadedState;
    emit(loadedState.copyWith(isPasswordMasked: event.isPasswordMasked));
  }

  FutureOr<void> _signUp(
      LoginSignUpEvent event, Emitter<LoginState> emit) async {
    try {
      await _repository.signUp(
          email: event.email,
          password: event.password,
          teacherName: event.name);
      add(const LoginChagePageStateEvent(pageState: LoginPageState.login));
      event.onSuccess?.call();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      event.onError?.call('Не удалось зарегистрироваться');
    }
  }

  FutureOr<void> _changePageState(
      LoginChagePageStateEvent event, Emitter<LoginState> emit) {
    final loadedState = state as LoginLoadedState;
    emit(loadedState.copyWith(pageState: event.pageState));
  }

  FutureOr<void> _signOut(
      LoginSignOutEvent event, Emitter<LoginState> emit) async {
    try {
      await _repository.signOut();
    } catch (e) {
      log('Нет подключения к интернету');
    }
  }

  FutureOr<void> _passwordRecovery(
      LoginPasswordRecoveryEvent event, Emitter<LoginState> emit) {
    try {
      _repository.recoverPassword(event.email);
      event.onSuccess?.call('Ссылка отправлена на почту');
    } on Exception catch(e, s) {
      event.onError?.call(e);
      debugPrint('err $e');
      debugPrintStack(stackTrace: s);
    } catch(e, s) {
      debugPrint('err $e');
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _updatePassword(
      LoginUpdatePasswordEvent event, Emitter<LoginState> emit) {
    try {
      _repository.updateUserPassword(event.password);
      event.onSuccess?.call('Пароль обновлен');
    } on Exception catch (e,s) {
      event.onError?.call(e);
      debugPrint('err $e');
      debugPrintStack(stackTrace: s);
    } catch(e) {
      debugPrint('err $e is handle');
    }
  }
}
