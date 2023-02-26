import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../routes/app_routes.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            SplashScreen(
              seconds: 5,
              gradientBackground: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 87, 230, 92),
                  Color.fromARGB(255, 19, 48, 20),
                ]
                ),
                navigateAfterSeconds: Routes.LOGIN,
                loaderColor: Colors.transparent,
            ),
            Container(
              margin: EdgeInsets.all(140.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain
                ),
              ),
            ),
          ],
        );
  }
}
