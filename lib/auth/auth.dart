
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _Authentication = FirebaseAuth.instance;

  Future<String?> signIn(String name, String email, String password) async {
    try {
      final UserCredential account =
          await _Authentication.createUserWithEmailAndPassword(
              email: email, password: password);
      account.user?.updateDisplayName(name);
      return account.toString();
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
