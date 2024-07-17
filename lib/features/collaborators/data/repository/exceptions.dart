class CollaboratorNotFoundException implements Exception {
  final String message;
  final String email;
  CollaboratorNotFoundException(this.message, this.email);
  @override
  String toString() {
    return 'Пользователь с почтой $email не найден. $message';
  }
}