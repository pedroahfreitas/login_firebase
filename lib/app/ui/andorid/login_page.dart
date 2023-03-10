import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/controller/login_controller.dart';
import 'package:login_firebase/app/routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.find<LoginController>();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formkey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: [
              Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 48.0,
                    child: Image.asset("assets/logo1.png"),
                  )),
              SizedBox(height: 48.0),
              TextFormField(
                controller: _loginController.emailTextController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo Obrigatório";
                  } else if (!GetUtils.isEmail(value)) {
                    return " Campo requer um e-mail válido.";
                  }
                  return null;
                },
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo Obrigatório";
                  } else if (value.length < 6) {
                    return "O campo requer mínimo 6 caracteres.";
                  }
                  return null;
                },
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
                    onPressed: () {
                      if(_formkey.currentState!.validate()) {
                        _loginController.login();
                      }
                    },
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
                onPressed: () {
                  Get.toNamed(Routes.REGISTER);
                },
                child: Text(
                  "Cadastra-se?",
                  style: TextStyle(color: Get.theme.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
