
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';

class User {

  String id;
  String name;
  String email;
  String urlimage;

  User({ required this.id, required this.name, required this.email, required this.urlimage });

 User.fromSnapshot(FirebaseUser currentUser) : 
  id = currentUser.uid,
  name = currentUser.displayName,
  email = currentUser.email,
  urlimage = currentUser.photoUrl;

  Map<String, dynamic> toJson(){
    return {
      "id" : id,
      "name": name,
      "email": email,
      "urlimage": urlimage,
    };
  }
}