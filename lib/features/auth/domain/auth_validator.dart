class AuthValidator {
  static final RegExp _emailRegex = RegExp(r'@+');
  static const _minPasswordLength = 8;
  static const _minNameLength = 2;
  static bool isPasswordValid(String password) {
    return password.trim().isNotEmpty && password.trim().length >= _minPasswordLength;
  }
  static bool isEmailValid(String email) {
    return _emailRegex.hasMatch(email.trim()) && email.trim().isNotEmpty;
  }

  static bool isNameValid(String name) {
    return name.trim().isNotEmpty && name.trim().length >= _minNameLength;
  }
}