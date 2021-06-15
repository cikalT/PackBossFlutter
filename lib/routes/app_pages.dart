import 'package:get/get.dart';
import 'package:packboss/pages/auth/login/login_page.dart';
import 'package:packboss/pages/auth/register/register_page.dart';
import 'package:packboss/pages/home/home_page.dart';
import 'package:packboss/pages/pickup/add_destination/add_destination_page.dart';
import 'package:packboss/pages/pickup/add_origin/add_origin_page.dart';
import 'package:packboss/pages/pickup/add_package/add_package_page.dart';
import 'package:packboss/pages/pickup/pickup_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.indexPage,
        page: () => LoginPage(),
        transition: Transition.fadeIn),
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutes.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutes.homePage, page: () => HomePage()),
    GetPage(name: AppRoutes.pickupPage, page: () => PickupPage()),
    GetPage(name: AppRoutes.addOrigin, page: () => AddOriginPage()),
    GetPage(name: AppRoutes.addDestination, page: () => AddDestinationPage()),
    GetPage(name: AppRoutes.addPackage, page: () => AddPackagePage()),
  ];
}
