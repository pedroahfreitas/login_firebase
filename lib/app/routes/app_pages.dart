import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:login_firebase/app/ui/andorid/initial_page.dart';
import '../bindings/loign_binding.dart';
import '../ui/andorid/home_page.dart';
import '../ui/andorid/login_page.dart';
import 'package:get/route_manager.dart';

class APPPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialPage(),),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(),),
  ];
}