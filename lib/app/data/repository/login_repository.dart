import 'package:login_firebase/app/data/provider/login_provider.dart';
import 'package:login_firebase/app/data/model/user_model.dart';
class LoginRepository {

final LoginApiCLiente apiCliente = LoginApiCLiente();

  Future<User> createUserWithEmailAndPassword(String email, String password, String name){
    return apiCliente.CreateUserWithEmailAndPassword(email, password, name);
  }

  Future<User?> signInWithEmailAndPassword(String email, String password){
    return LoginApiCLiente.signInWithEmailAndPassword(email, password);
  }
  
}