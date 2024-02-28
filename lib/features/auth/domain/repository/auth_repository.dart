abstract interface class AuthRepository {
  Future<void> signIn(
      {required String email, required String password});

  Future<void> signUp(
      {required String email,
      required String password,
      required String teacherName});
  Future<void> recoverPassword(String email);
  Future<void> updateUserPassword(String password);
  Future<void> signOut();
}
