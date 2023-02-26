import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/controller/login_controller.dart';

class LoginPage extends StatelessWidget {

  final LoginController _loginController = Get.find<LoginController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset("assets/logo.png"),
                )),
            SizedBox(height: 48.0),
            TextFormField(
              controller: _loginController.emailTextController,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              //initialValue: "emailteste@gmail.com",
              decoration: InputDecoration(
                  hintText: "E-mail",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  )),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _loginController.passwordTextController,  
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Senha",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  )),
            ),
            SizedBox(height: 24.0),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Acessar',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.all(12.0),
                  ),
                )),
            TextButton(
              onPressed: () {},
              child: Text(
                "Esqueceu a senha?",
                style: TextStyle(color: Get.theme.primaryColor),
              ),
            ),
             TextButton(
              onPressed: () {},
              child: Text(
                "Cadastra-se?",
                style: TextStyle(color: Get.theme.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
