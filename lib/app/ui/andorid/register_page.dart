// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/controller/login_controller.dart';

class RegisterPage extends StatelessWidget {
  final LoginController _loginController = LoginController();
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
                    child: Image.asset("assets/logo.png"),
                  )),
              SizedBox(height: 18.0),
              Center(
                child: Text(
                  "CADASTRAR",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                controller: _loginController.nameTextController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo Obrigatório";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                //initialValue: "emailteste@gmail.com",
                decoration: InputDecoration(
                    hintText: "Nome",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    )),
              ),
              SizedBox(height: 18.0),
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
                      if (_formkey.currentState!.validate()) {
                        _loginController.register();
                      }
                    },
                    child: Text(
                      'Cadastrar',
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
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Voltar para login",
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
