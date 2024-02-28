import 'dart:async';
import 'dart:html';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/features/auth/domain/bloc/login_bloc.dart';
import 'package:teacher_client/features/auth/domain/repository/auth_repository.dart';

@RoutePage()
class RecoverPage extends StatefulWidget {
  final bool fromIncomingRecoverLink;

  const RecoverPage({super.key, this.fromIncomingRecoverLink = false});

  @override
  State<StatefulWidget> createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _emailFormKey = GlobalKey();
  final GlobalKey<FormState> _passwordKey = GlobalKey();
  bool _fromIncomingRecoverLink = false;

  @override
  void initState() {
    debugPrint(window.location.href);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final queryParams = context.router.current.queryParams;
    _fromIncomingRecoverLink =
        queryParams.getBool('fromIncomingRecoverLink', false);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fromIncomingRecoverLink = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            LoginBloc(authRepository: GetIt.I<AuthRepository>()),
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: !_fromIncomingRecoverLink
                  ? SendLinkInEmail(
                      emailController: _emailController, formKey: _emailFormKey)
                  : InputNewPassword(
                      passwordController: _passwordController,
                      formKey: _passwordKey,
                      onSuccessPasswordChange: () =>
                          _fromIncomingRecoverLink = false,
                    ),
            ),
          ),
        ));
  }
}

class InputNewPassword extends StatelessWidget {
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  final Function onSuccessPasswordChange;

  const InputNewPassword(
      {super.key,
      required this.passwordController,
      required this.formKey,
      required this.onSuccessPasswordChange});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Form(
        key: formKey,
        child: TextFormField(
            controller: passwordController,
            validator: (text) =>
                text != null && (text.isEmpty || text.length < 8)
                    ? 'Неверно введен пароль'
                    : null,
            decoration: InputDecoration(
                label: const Text('Введите новый пароль'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              bloc.add(LoginEvent.updateUserPassword(
                  password: passwordController.text,
                  onSuccess: (message) {
                    Supabase.instance.client.auth.signOut();
                    AutoRouter.of(context).navigate(const LoginRoute());
                    context.showSnackBar(message: message);
                    onSuccessPasswordChange();
                  },
                  onError: (_) {
                    context.showSnackBar(message: 'Не удалось обновить пароль');
                  }));
            }
          },
          child: const Text('Обновить'))
    ]);
  }
}

class SendLinkInEmail extends StatelessWidget {
  final TextEditingController emailController;
  final GlobalKey<FormState> formKey;

  const SendLinkInEmail(
      {super.key, required this.emailController, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Form(
        key: formKey,
        child: TextFormField(
            controller: emailController,
            validator: (text) =>
                text != null && (text.isEmpty || !text.contains('@'))
                    ? 'Неверно введена почта'
                    : null,
            decoration: InputDecoration(
                label: const Text('Введите почту'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
      ),
      const SizedBox(height: 8),
      const Text(
          'Мы отправим вам ссылку для восстановления пароля, после отправки проверьте почту'),
      const SizedBox(height: 8),
      ElevatedButton(
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              bloc.add(LoginEvent.recoverPassword(
                  email: emailController.text,
                  onSuccess: (message) {
                    context.showSnackBar(message: message);
                  },
                  onError: (exception) {
                    context.showSnackBar(
                        message: 'Не удалось отправить ссылку');
                  }));
            }
          },
          child: const Text('Отправить'))
    ]);
  }
}
