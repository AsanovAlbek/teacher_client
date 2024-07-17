import 'package:flutter/material.dart';
import 'package:teacher_client/features/auth/domain/auth_validator.dart';
import 'package:teacher_client/features/auth/login/login_page_state.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> loginFormKey;
  final LoginPageState pageState;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final bool isPasswordMasked;
  final Function(LoginPageState) changeAuthPageState;
  final VoidCallback changePasswordMasked;
  final VoidCallback signIn;
  final VoidCallback signUp;
  final VoidCallback navigateToRecoverPassword;

  const LoginForm(
      {super.key,
      required this.loginFormKey,
      required this.pageState,
      required this.emailController,
      required this.passwordController,
      required this.nameController,
      required this.isPasswordMasked,
      required this.changeAuthPageState,
      required this.changePasswordMasked,
      required this.signIn,
      required this.signUp,
      required this.navigateToRecoverPassword});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (pageState == LoginPageState.auth)
            TextFormField(
              controller: nameController,
              validator: (name) => AuthValidator.isNameValid(name ?? '')
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
            controller: emailController,
            validator: (email) => AuthValidator.isEmailValid(email ?? '')
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
            controller: passwordController,
            validator: (password) =>
                AuthValidator.isPasswordValid(password ?? '')
                    ? null
                    : 'Неверно введён пароль',
            decoration: InputDecoration(
                hintText: 'Пароль',
                labelText: 'Пароль',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    icon: isPasswordMasked
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onPressed: changePasswordMasked)),
            maxLines: 1,
            obscureText: !isPasswordMasked,
          ),
          const SizedBox(height: 8),
          if (pageState == LoginPageState.login) ...[
            ElevatedButton(onPressed: signIn, child: const Text('Войти')),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () => changeAuthPageState(LoginPageState.auth),
                child: const Text('Создать аккаунт')),
            const SizedBox(height: 8),
            TextButton(
                onPressed: navigateToRecoverPassword,
                child: const Text('Забыли пароль?'))
          ] else ...[
            ElevatedButton(onPressed: signUp, child: const Text('Создать')),
            const SizedBox(height: 8),
            TextButton(
                onPressed: () => changeAuthPageState(LoginPageState.login),
                child: const Text('Назад'))
          ]
        ],
      ),
    );
  }
}
