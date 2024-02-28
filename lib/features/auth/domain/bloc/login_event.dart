part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signIn(
      {required String email,
      required String password,
      VoidCallback? onSuccess,
      Function(String? message)? onError}) = LoginSignInEvent;

  const factory LoginEvent.signUp(
      {required String name,
      required String email,
      required String password,
      VoidCallback? onSuccess,
      Function(String? message)? onError}) = LoginSignUpEvent;

  const factory LoginEvent.changePasswordMasked(
      {required bool isPasswordMasked}) = LoginChangePasswordMaskedEvent;

  const factory LoginEvent.changePage(
          {@Default(LoginPageState.login) LoginPageState pageState}) =
      LoginChagePageStateEvent;

  const factory LoginEvent.sighOut() = LoginSignOutEvent;

  const factory LoginEvent.updateUserPassword(
      {required String password,
      Function(String)? onSuccess,
      Function(Exception)? onError}) = LoginUpdatePasswordEvent;

  const factory LoginEvent.recoverPassword(
      {required String email,
      Function(String)? onSuccess,
      Function(Exception)? onError}) = LoginPasswordRecoveryEvent;
}
