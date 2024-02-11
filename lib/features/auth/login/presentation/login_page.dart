import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/features/auth/domain/auth_validator.dart';
import 'package:teacher_client/features/auth/domain/repository/auth_repository.dart';
import 'package:teacher_client/features/auth/login/bloc/login_bloc.dart';

import '../login_page_state.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController.clear();
    _passwordController.clear();
    _nameController.clear();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(authRepository: GetIt.I<AuthRepository>()),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: state.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (String message) => const Text('Smth going wrong'),
                  loaded: (LoginPageState pageState, bool isPasswordMasked) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (pageState == LoginPageState.auth)
                              TextFormField(
                                controller: _nameController,
                                validator: (name) =>
                                    AuthValidator.isNameValid(name ?? '')
                                        ? null
                                        : 'Имя не может быть меньше двух букв',
                                decoration: const InputDecoration(
                                    hintText: 'Имя',
                                    labelText: 'Имя',
                                    border: OutlineInputBorder()),
                                maxLines: 1,
                              ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _emailController,
                              validator: (email) =>
                                  AuthValidator.isEmailValid(email ?? '')
                                      ? null
                                      : 'Неверно введен адрес почты',
                              decoration: const InputDecoration(
                                hintText: 'Почта',
                                labelText: 'Почта',
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 1,
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _passwordController,
                              validator: (password) =>
                                  AuthValidator.isPasswordValid(password ?? '')
                                      ? null
                                      : 'Неверно введён пароль',
                              decoration: InputDecoration(
                                  hintText: 'Пароль',
                                  labelText: 'Пароль',
                                  border: const OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                      padding: const EdgeInsetsDirectional.only(
                                          end: 12.0),
                                      icon: isPasswordMasked
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off),
                                      onPressed: () {
                                        context.read<LoginBloc>().add(
                                            LoginEvent.changePasswordMasked(
                                                isPasswordMasked:
                                                    !isPasswordMasked));
                                      })),
                              maxLines: 1,
                              obscureText: !isPasswordMasked,
                            ),
                            const SizedBox(height: 8),
                            if (pageState == LoginPageState.login) ...[
                              ElevatedButton(
                                  onPressed: () {
                                    log('validate = ${_formKey.currentState?.validate()}');
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      context.read<LoginBloc>().add(
                                          LoginEvent.signIn(
                                              email:
                                                  _emailController.text.trim(),
                                              password: _passwordController.text
                                                  .trim(),
                                              onSuccess: () {
                                                AutoRouter.of(context).navigate(
                                                    const HomeRoute());
                                              },
                                              onError: (message) {
                                                context.showSnackBar(
                                                    message: message ??
                                                        'Неизвестная ошибка');
                                              }));
                                    } else {
                                      context.showSnackBar(
                                          message: 'Введите почту и пароль');
                                    }
                                  },
                                  child: const Text('Войти')),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                  onPressed: () {
                                    context.read<LoginBloc>().add(
                                        const LoginEvent.changePage(
                                            pageState: LoginPageState.auth));
                                  },
                                  child: const Text('Создать аккаунт'))
                            ] else ...[
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      context.read<LoginBloc>().add(
                                            LoginEvent.signUp(
                                                name: _nameController.text,
                                                email: _emailController.text,
                                                password:
                                                    _passwordController.text,
                                                onSuccess: () {
                                                  context.showSnackBar(
                                                      message:
                                                          'Вы успешно зарегистрировались');
                                                },
                                                onError: (message) {
                                                  context.showSnackBar(
                                                      message: message ??
                                                          'Произошла ошибка');
                                                }),
                                          );
                                    } else {
                                      context.showSnackBar(
                                          message:
                                              'Введите имя, почту и пароль');
                                    }
                                  },
                                  child: const Text('Создать')),
                              const SizedBox(height: 8),
                              TextButton(
                                  onPressed: () {
                                    context.read<LoginBloc>().add(
                                        const LoginEvent.changePage(
                                            pageState: LoginPageState.login));
                                  },
                                  child: const Text('Назад'))
                            ]
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          );
        },
      ),
    );
  }
}
