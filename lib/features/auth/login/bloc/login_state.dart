part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = LoginLoadingState;

  const factory LoginState.loaded(
      {@Default(LoginPageState.login) LoginPageState pageState,
      @Default(true) bool isPasswordMasked}) = LoginLoadedState;

  const factory LoginState.error({@Default('') String message}) =
      LoginStateError;
}
