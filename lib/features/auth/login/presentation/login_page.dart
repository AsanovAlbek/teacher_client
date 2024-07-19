import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/features/auth/domain/auth_validator.dart';
import 'package:teacher_client/features/auth/domain/repository/auth_repository.dart';
import 'package:teacher_client/features/auth/login/widget/login_form.dart';

import '../../domain/bloc/login_bloc.dart';
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
    debugPrint('page url ${AutoRouter.of(context).currentUrl}');
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
                      child: LoginForm(
                          loginFormKey: _formKey,
                          pageState: pageState,
                          emailController: _emailController,
                          passwordController: _passwordController,
                          nameController: _nameController,
                          isPasswordMasked: isPasswordMasked,
                          changeAuthPageState: (loginPageState) =>
                              _changeAuthPage(context, loginPageState),
                          changePasswordMasked: () =>
                              _changePasswordMasked(context, isPasswordMasked),
                          signIn: () => _signIn(context),
                          signUp: () => _signUp(context),
                          navigateToRecoverPassword:
                              _navigateToRecoverPassword),
                    );
                  }),
            ),
          );
        },
      ),
    );
  }

  void _signIn(BuildContext buidlContext) {
    log('validate = ${_formKey.currentState?.validate()}');
    if (_formKey.currentState?.validate() ?? false) {
      buidlContext.read<LoginBloc>().add(LoginEvent.signIn(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          onSuccess: () {
            AutoRouter.of(buidlContext).navigate(const HomeRoute());
          },
          onError: (message) {
            buidlContext.showSnackBar(message: message ?? 'Неизвестная ошибка');
          }));
    } else {
      buidlContext.showSnackBar(message: 'Введите почту и пароль');
    }
  }

  void _signUp(BuildContext buidlContext) {
    if (_formKey.currentState?.validate() ?? false) {
      buidlContext.read<LoginBloc>().add(
            LoginEvent.signUp(
                name: _nameController.text,
                email: _emailController.text,
                password: _passwordController.text,
                onSuccess: () {
                  buidlContext.showSnackBar(
                      message: 'Вы успешно зарегистрировались');
                  AutoRouter.of(buidlContext).navigate(const HomeRoute());
                },
                onError: (message) {
                  buidlContext.showSnackBar(
                      message: message ?? 'Произошла ошибка');
                }),
          );
    } else {
      buidlContext.showSnackBar(message: 'Введите имя, почту и пароль');
    }
  }

  void _changeAuthPage(BuildContext buildContext, LoginPageState pageState) {
    if (mounted) {
      buildContext
          .read<LoginBloc>()
          .add(LoginEvent.changePage(pageState: pageState));
    }
  }

  void _changePasswordMasked(BuildContext buildContext, bool isPasswordMasked) {
    if (mounted) {
      buildContext.read<LoginBloc>().add(
          LoginEvent.changePasswordMasked(isPasswordMasked: !isPasswordMasked));
    }
  }

  void _navigateToRecoverPassword() {
    AutoRouter.of(context)
        .navigate(RecoverRoute(fromIncomingRecoverLink: true));
  }
}
