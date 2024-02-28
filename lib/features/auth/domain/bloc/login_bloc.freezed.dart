// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSignInEventImplCopyWith<$Res> {
  factory _$$LoginSignInEventImplCopyWith(_$LoginSignInEventImpl value,
          $Res Function(_$LoginSignInEventImpl) then) =
      __$$LoginSignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      VoidCallback? onSuccess,
      dynamic Function(String?)? onError});
}

/// @nodoc
class __$$LoginSignInEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSignInEventImpl>
    implements _$$LoginSignInEventImplCopyWith<$Res> {
  __$$LoginSignInEventImplCopyWithImpl(_$LoginSignInEventImpl _value,
      $Res Function(_$LoginSignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LoginSignInEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String?)?,
    ));
  }
}

/// @nodoc

class _$LoginSignInEventImpl implements LoginSignInEvent {
  const _$LoginSignInEventImpl(
      {required this.email,
      required this.password,
      this.onSuccess,
      this.onError});

  @override
  final String email;
  @override
  final String password;
  @override
  final VoidCallback? onSuccess;
  @override
  final dynamic Function(String?)? onError;

  @override
  String toString() {
    return 'LoginEvent.signIn(email: $email, password: $password, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSignInEventImplCopyWith<_$LoginSignInEventImpl> get copyWith =>
      __$$LoginSignInEventImplCopyWithImpl<_$LoginSignInEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return signIn(email, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return signIn?.call(email, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class LoginSignInEvent implements LoginEvent {
  const factory LoginSignInEvent(
      {required final String email,
      required final String password,
      final VoidCallback? onSuccess,
      final dynamic Function(String?)? onError}) = _$LoginSignInEventImpl;

  String get email;
  String get password;
  VoidCallback? get onSuccess;
  dynamic Function(String?)? get onError;
  @JsonKey(ignore: true)
  _$$LoginSignInEventImplCopyWith<_$LoginSignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSignUpEventImplCopyWith<$Res> {
  factory _$$LoginSignUpEventImplCopyWith(_$LoginSignUpEventImpl value,
          $Res Function(_$LoginSignUpEventImpl) then) =
      __$$LoginSignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      VoidCallback? onSuccess,
      dynamic Function(String?)? onError});
}

/// @nodoc
class __$$LoginSignUpEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSignUpEventImpl>
    implements _$$LoginSignUpEventImplCopyWith<$Res> {
  __$$LoginSignUpEventImplCopyWithImpl(_$LoginSignUpEventImpl _value,
      $Res Function(_$LoginSignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LoginSignUpEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String?)?,
    ));
  }
}

/// @nodoc

class _$LoginSignUpEventImpl implements LoginSignUpEvent {
  const _$LoginSignUpEventImpl(
      {required this.name,
      required this.email,
      required this.password,
      this.onSuccess,
      this.onError});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final VoidCallback? onSuccess;
  @override
  final dynamic Function(String?)? onError;

  @override
  String toString() {
    return 'LoginEvent.signUp(name: $name, email: $email, password: $password, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSignUpEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSignUpEventImplCopyWith<_$LoginSignUpEventImpl> get copyWith =>
      __$$LoginSignUpEventImplCopyWithImpl<_$LoginSignUpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return signUp(name, email, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return signUp?.call(name, email, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(name, email, password, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class LoginSignUpEvent implements LoginEvent {
  const factory LoginSignUpEvent(
      {required final String name,
      required final String email,
      required final String password,
      final VoidCallback? onSuccess,
      final dynamic Function(String?)? onError}) = _$LoginSignUpEventImpl;

  String get name;
  String get email;
  String get password;
  VoidCallback? get onSuccess;
  dynamic Function(String?)? get onError;
  @JsonKey(ignore: true)
  _$$LoginSignUpEventImplCopyWith<_$LoginSignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginChangePasswordMaskedEventImplCopyWith<$Res> {
  factory _$$LoginChangePasswordMaskedEventImplCopyWith(
          _$LoginChangePasswordMaskedEventImpl value,
          $Res Function(_$LoginChangePasswordMaskedEventImpl) then) =
      __$$LoginChangePasswordMaskedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPasswordMasked});
}

/// @nodoc
class __$$LoginChangePasswordMaskedEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginChangePasswordMaskedEventImpl>
    implements _$$LoginChangePasswordMaskedEventImplCopyWith<$Res> {
  __$$LoginChangePasswordMaskedEventImplCopyWithImpl(
      _$LoginChangePasswordMaskedEventImpl _value,
      $Res Function(_$LoginChangePasswordMaskedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordMasked = null,
  }) {
    return _then(_$LoginChangePasswordMaskedEventImpl(
      isPasswordMasked: null == isPasswordMasked
          ? _value.isPasswordMasked
          : isPasswordMasked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginChangePasswordMaskedEventImpl
    implements LoginChangePasswordMaskedEvent {
  const _$LoginChangePasswordMaskedEventImpl({required this.isPasswordMasked});

  @override
  final bool isPasswordMasked;

  @override
  String toString() {
    return 'LoginEvent.changePasswordMasked(isPasswordMasked: $isPasswordMasked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginChangePasswordMaskedEventImpl &&
            (identical(other.isPasswordMasked, isPasswordMasked) ||
                other.isPasswordMasked == isPasswordMasked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordMasked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginChangePasswordMaskedEventImplCopyWith<
          _$LoginChangePasswordMaskedEventImpl>
      get copyWith => __$$LoginChangePasswordMaskedEventImplCopyWithImpl<
          _$LoginChangePasswordMaskedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return changePasswordMasked(isPasswordMasked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return changePasswordMasked?.call(isPasswordMasked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (changePasswordMasked != null) {
      return changePasswordMasked(isPasswordMasked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return changePasswordMasked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return changePasswordMasked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (changePasswordMasked != null) {
      return changePasswordMasked(this);
    }
    return orElse();
  }
}

abstract class LoginChangePasswordMaskedEvent implements LoginEvent {
  const factory LoginChangePasswordMaskedEvent(
          {required final bool isPasswordMasked}) =
      _$LoginChangePasswordMaskedEventImpl;

  bool get isPasswordMasked;
  @JsonKey(ignore: true)
  _$$LoginChangePasswordMaskedEventImplCopyWith<
          _$LoginChangePasswordMaskedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginChagePageStateEventImplCopyWith<$Res> {
  factory _$$LoginChagePageStateEventImplCopyWith(
          _$LoginChagePageStateEventImpl value,
          $Res Function(_$LoginChagePageStateEventImpl) then) =
      __$$LoginChagePageStateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginPageState pageState});
}

/// @nodoc
class __$$LoginChagePageStateEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginChagePageStateEventImpl>
    implements _$$LoginChagePageStateEventImplCopyWith<$Res> {
  __$$LoginChagePageStateEventImplCopyWithImpl(
      _$LoginChagePageStateEventImpl _value,
      $Res Function(_$LoginChagePageStateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_$LoginChagePageStateEventImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as LoginPageState,
    ));
  }
}

/// @nodoc

class _$LoginChagePageStateEventImpl implements LoginChagePageStateEvent {
  const _$LoginChagePageStateEventImpl({this.pageState = LoginPageState.login});

  @override
  @JsonKey()
  final LoginPageState pageState;

  @override
  String toString() {
    return 'LoginEvent.changePage(pageState: $pageState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginChagePageStateEventImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginChagePageStateEventImplCopyWith<_$LoginChagePageStateEventImpl>
      get copyWith => __$$LoginChagePageStateEventImplCopyWithImpl<
          _$LoginChagePageStateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return changePage(pageState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return changePage?.call(pageState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(pageState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class LoginChagePageStateEvent implements LoginEvent {
  const factory LoginChagePageStateEvent({final LoginPageState pageState}) =
      _$LoginChagePageStateEventImpl;

  LoginPageState get pageState;
  @JsonKey(ignore: true)
  _$$LoginChagePageStateEventImplCopyWith<_$LoginChagePageStateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSignOutEventImplCopyWith<$Res> {
  factory _$$LoginSignOutEventImplCopyWith(_$LoginSignOutEventImpl value,
          $Res Function(_$LoginSignOutEventImpl) then) =
      __$$LoginSignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSignOutEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSignOutEventImpl>
    implements _$$LoginSignOutEventImplCopyWith<$Res> {
  __$$LoginSignOutEventImplCopyWithImpl(_$LoginSignOutEventImpl _value,
      $Res Function(_$LoginSignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSignOutEventImpl implements LoginSignOutEvent {
  const _$LoginSignOutEventImpl();

  @override
  String toString() {
    return 'LoginEvent.sighOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return sighOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return sighOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (sighOut != null) {
      return sighOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return sighOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return sighOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (sighOut != null) {
      return sighOut(this);
    }
    return orElse();
  }
}

abstract class LoginSignOutEvent implements LoginEvent {
  const factory LoginSignOutEvent() = _$LoginSignOutEventImpl;
}

/// @nodoc
abstract class _$$LoginUpdatePasswordEventImplCopyWith<$Res> {
  factory _$$LoginUpdatePasswordEventImplCopyWith(
          _$LoginUpdatePasswordEventImpl value,
          $Res Function(_$LoginUpdatePasswordEventImpl) then) =
      __$$LoginUpdatePasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String password,
      dynamic Function(String)? onSuccess,
      dynamic Function(Exception)? onError});
}

/// @nodoc
class __$$LoginUpdatePasswordEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginUpdatePasswordEventImpl>
    implements _$$LoginUpdatePasswordEventImplCopyWith<$Res> {
  __$$LoginUpdatePasswordEventImplCopyWithImpl(
      _$LoginUpdatePasswordEventImpl _value,
      $Res Function(_$LoginUpdatePasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LoginUpdatePasswordEventImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Exception)?,
    ));
  }
}

/// @nodoc

class _$LoginUpdatePasswordEventImpl implements LoginUpdatePasswordEvent {
  const _$LoginUpdatePasswordEventImpl(
      {required this.password, this.onSuccess, this.onError});

  @override
  final String password;
  @override
  final dynamic Function(String)? onSuccess;
  @override
  final dynamic Function(Exception)? onError;

  @override
  String toString() {
    return 'LoginEvent.updateUserPassword(password: $password, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUpdatePasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUpdatePasswordEventImplCopyWith<_$LoginUpdatePasswordEventImpl>
      get copyWith => __$$LoginUpdatePasswordEventImplCopyWithImpl<
          _$LoginUpdatePasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return updateUserPassword(password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return updateUserPassword?.call(password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(password, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return updateUserPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return updateUserPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(this);
    }
    return orElse();
  }
}

abstract class LoginUpdatePasswordEvent implements LoginEvent {
  const factory LoginUpdatePasswordEvent(
          {required final String password,
          final dynamic Function(String)? onSuccess,
          final dynamic Function(Exception)? onError}) =
      _$LoginUpdatePasswordEventImpl;

  String get password;
  dynamic Function(String)? get onSuccess;
  dynamic Function(Exception)? get onError;
  @JsonKey(ignore: true)
  _$$LoginUpdatePasswordEventImplCopyWith<_$LoginUpdatePasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPasswordRecoveryEventImplCopyWith<$Res> {
  factory _$$LoginPasswordRecoveryEventImplCopyWith(
          _$LoginPasswordRecoveryEventImpl value,
          $Res Function(_$LoginPasswordRecoveryEventImpl) then) =
      __$$LoginPasswordRecoveryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      dynamic Function(String)? onSuccess,
      dynamic Function(Exception)? onError});
}

/// @nodoc
class __$$LoginPasswordRecoveryEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginPasswordRecoveryEventImpl>
    implements _$$LoginPasswordRecoveryEventImplCopyWith<$Res> {
  __$$LoginPasswordRecoveryEventImplCopyWithImpl(
      _$LoginPasswordRecoveryEventImpl _value,
      $Res Function(_$LoginPasswordRecoveryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$LoginPasswordRecoveryEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Exception)?,
    ));
  }
}

/// @nodoc

class _$LoginPasswordRecoveryEventImpl implements LoginPasswordRecoveryEvent {
  const _$LoginPasswordRecoveryEventImpl(
      {required this.email, this.onSuccess, this.onError});

  @override
  final String email;
  @override
  final dynamic Function(String)? onSuccess;
  @override
  final dynamic Function(Exception)? onError;

  @override
  String toString() {
    return 'LoginEvent.recoverPassword(email: $email, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordRecoveryEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPasswordRecoveryEventImplCopyWith<_$LoginPasswordRecoveryEventImpl>
      get copyWith => __$$LoginPasswordRecoveryEventImplCopyWithImpl<
          _$LoginPasswordRecoveryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signIn,
    required TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)
        signUp,
    required TResult Function(bool isPasswordMasked) changePasswordMasked,
    required TResult Function(LoginPageState pageState) changePage,
    required TResult Function() sighOut,
    required TResult Function(
            String password,
            dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        updateUserPassword,
    required TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)
        recoverPassword,
  }) {
    return recoverPassword(email, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult? Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult? Function(bool isPasswordMasked)? changePasswordMasked,
    TResult? Function(LoginPageState pageState)? changePage,
    TResult? Function()? sighOut,
    TResult? Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult? Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
  }) {
    return recoverPassword?.call(email, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, VoidCallback? onSuccess,
            dynamic Function(String?)? onError)?
        signIn,
    TResult Function(String name, String email, String password,
            VoidCallback? onSuccess, dynamic Function(String?)? onError)?
        signUp,
    TResult Function(bool isPasswordMasked)? changePasswordMasked,
    TResult Function(LoginPageState pageState)? changePage,
    TResult Function()? sighOut,
    TResult Function(String password, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        updateUserPassword,
    TResult Function(String email, dynamic Function(String)? onSuccess,
            dynamic Function(Exception)? onError)?
        recoverPassword,
    required TResult orElse(),
  }) {
    if (recoverPassword != null) {
      return recoverPassword(email, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInEvent value) signIn,
    required TResult Function(LoginSignUpEvent value) signUp,
    required TResult Function(LoginChangePasswordMaskedEvent value)
        changePasswordMasked,
    required TResult Function(LoginChagePageStateEvent value) changePage,
    required TResult Function(LoginSignOutEvent value) sighOut,
    required TResult Function(LoginUpdatePasswordEvent value)
        updateUserPassword,
    required TResult Function(LoginPasswordRecoveryEvent value) recoverPassword,
  }) {
    return recoverPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInEvent value)? signIn,
    TResult? Function(LoginSignUpEvent value)? signUp,
    TResult? Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult? Function(LoginChagePageStateEvent value)? changePage,
    TResult? Function(LoginSignOutEvent value)? sighOut,
    TResult? Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult? Function(LoginPasswordRecoveryEvent value)? recoverPassword,
  }) {
    return recoverPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInEvent value)? signIn,
    TResult Function(LoginSignUpEvent value)? signUp,
    TResult Function(LoginChangePasswordMaskedEvent value)?
        changePasswordMasked,
    TResult Function(LoginChagePageStateEvent value)? changePage,
    TResult Function(LoginSignOutEvent value)? sighOut,
    TResult Function(LoginUpdatePasswordEvent value)? updateUserPassword,
    TResult Function(LoginPasswordRecoveryEvent value)? recoverPassword,
    required TResult orElse(),
  }) {
    if (recoverPassword != null) {
      return recoverPassword(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordRecoveryEvent implements LoginEvent {
  const factory LoginPasswordRecoveryEvent(
          {required final String email,
          final dynamic Function(String)? onSuccess,
          final dynamic Function(Exception)? onError}) =
      _$LoginPasswordRecoveryEventImpl;

  String get email;
  dynamic Function(String)? get onSuccess;
  dynamic Function(Exception)? get onError;
  @JsonKey(ignore: true)
  _$$LoginPasswordRecoveryEventImplCopyWith<_$LoginPasswordRecoveryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LoginPageState pageState, bool isPasswordMasked)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginLoadedState value) loaded,
    required TResult Function(LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginLoadedState value)? loaded,
    TResult? Function(LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginLoadedState value)? loaded,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<$Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl value,
          $Res Function(_$LoginLoadingStateImpl) then) =
      __$$LoginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingStateImpl>
    implements _$$LoginLoadingStateImplCopyWith<$Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl _value,
      $Res Function(_$LoginLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingStateImpl implements LoginLoadingState {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LoginPageState pageState, bool isPasswordMasked)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginLoadedState value) loaded,
    required TResult Function(LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginLoadedState value)? loaded,
    TResult? Function(LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginLoadedState value)? loaded,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState implements LoginState {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl;
}

/// @nodoc
abstract class _$$LoginLoadedStateImplCopyWith<$Res> {
  factory _$$LoginLoadedStateImplCopyWith(_$LoginLoadedStateImpl value,
          $Res Function(_$LoginLoadedStateImpl) then) =
      __$$LoginLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginPageState pageState, bool isPasswordMasked});
}

/// @nodoc
class __$$LoginLoadedStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadedStateImpl>
    implements _$$LoginLoadedStateImplCopyWith<$Res> {
  __$$LoginLoadedStateImplCopyWithImpl(_$LoginLoadedStateImpl _value,
      $Res Function(_$LoginLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isPasswordMasked = null,
  }) {
    return _then(_$LoginLoadedStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as LoginPageState,
      isPasswordMasked: null == isPasswordMasked
          ? _value.isPasswordMasked
          : isPasswordMasked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginLoadedStateImpl implements LoginLoadedState {
  const _$LoginLoadedStateImpl(
      {this.pageState = LoginPageState.login, this.isPasswordMasked = true});

  @override
  @JsonKey()
  final LoginPageState pageState;
  @override
  @JsonKey()
  final bool isPasswordMasked;

  @override
  String toString() {
    return 'LoginState.loaded(pageState: $pageState, isPasswordMasked: $isPasswordMasked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginLoadedStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isPasswordMasked, isPasswordMasked) ||
                other.isPasswordMasked == isPasswordMasked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, isPasswordMasked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginLoadedStateImplCopyWith<_$LoginLoadedStateImpl> get copyWith =>
      __$$LoginLoadedStateImplCopyWithImpl<_$LoginLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LoginPageState pageState, bool isPasswordMasked)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pageState, isPasswordMasked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(pageState, isPasswordMasked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pageState, isPasswordMasked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginLoadedState value) loaded,
    required TResult Function(LoginStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginLoadedState value)? loaded,
    TResult? Function(LoginStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginLoadedState value)? loaded,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoginLoadedState implements LoginState {
  const factory LoginLoadedState(
      {final LoginPageState pageState,
      final bool isPasswordMasked}) = _$LoginLoadedStateImpl;

  LoginPageState get pageState;
  bool get isPasswordMasked;
  @JsonKey(ignore: true)
  _$$LoginLoadedStateImplCopyWith<_$LoginLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateErrorImplCopyWith<$Res> {
  factory _$$LoginStateErrorImplCopyWith(_$LoginStateErrorImpl value,
          $Res Function(_$LoginStateErrorImpl) then) =
      __$$LoginStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginStateErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateErrorImpl>
    implements _$$LoginStateErrorImplCopyWith<$Res> {
  __$$LoginStateErrorImplCopyWithImpl(
      _$LoginStateErrorImpl _value, $Res Function(_$LoginStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateErrorImpl implements LoginStateError {
  const _$LoginStateErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      __$$LoginStateErrorImplCopyWithImpl<_$LoginStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LoginPageState pageState, bool isPasswordMasked)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoginPageState pageState, bool isPasswordMasked)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginLoadedState value) loaded,
    required TResult Function(LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginLoadedState value)? loaded,
    TResult? Function(LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginLoadedState value)? loaded,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError({final String message}) = _$LoginStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
