abstract class BaseAuth {
  Future<String> signIn(String username, String password);
  Future<String> signUp(Map user);
}

class Auth implements BaseAuth {
  @override
  Future<String> signIn(String username, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<String> signUp(Map user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
