import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';
import '../model/user_model.dart';

class LoginApiCLiente {
  // ignore: prefer_final_fields
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // Retorna usuário logado
  Stream<User> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged
      .map((FirebaseUser currentUser) => User.fromSnapshot(currentUser));

  // ignore: missing_return
  CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final currentUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      // Atualizando o nome do usuário
      var userUpdateInfo = UserUpdateInfo();
      userUpdateInfo.displayName = name;

      await currentUser.updateProfile(userUpdateInfo);
      await currentUser.reload();

      return User.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
    }
  }

  // Fazer Login
  static Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: "barry.allen@example.com", password: "SuperSecretPassword!");
    } catch (e) {
      print(e);
    }
    return null;
  }

  // Fazer Logoff
  singOut() {
    return _firebaseAuth.signOut();
  }


  
}
