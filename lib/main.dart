// ignore_for_file: import_of_legacy_library_into_null_safe
//@dart=2.9
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/ui/theme/app_theme.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
    runApp(
     GetMaterialApp(
      title: 'Login Firebase',
      debugShowCheckedModeBanner: false,
      getPages: APPPages.routes,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
    )
  );
}