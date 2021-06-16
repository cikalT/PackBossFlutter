import 'package:get/get.dart';
import 'package:packboss/pages/auth/login/login_page.dart';
import 'package:packboss/pages/auth/register/register_page.dart';
import 'package:packboss/pages/history/history_page.dart';
import 'package:packboss/pages/home/home_page.dart';
import 'package:packboss/pages/index_page.dart';
import 'package:packboss/pages/pickup/add_destination/add_destination_page.dart';
import 'package:packboss/pages/pickup/add_origin/add_origin_page.dart';
import 'package:packboss/pages/pickup/add_package/add_package_page.dart';
import 'package:packboss/pages/pickup/pickup_page.dart';
import 'package:packboss/pages/pickup/success/pickup_success_page.dart';
import 'package:packboss/pages/tracking/tracking_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.indexPage,
        page: () => IndexPage(),
        transition: Transition.cupertino),
    GetPage(
        name: AppRoutes.loginPage,
        page: () => LoginPage(),
        transition: Transition.cupertino),
    GetPage(name: AppRoutes.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutes.homePage, page: () => HomePage()),
    GetPage(name: AppRoutes.historyPage, page: () => HistoryPage()),
    GetPage(name: AppRoutes.trackingPage, page: () => TrackingPage()),
    GetPage(name: AppRoutes.pickupPage, page: () => PickupPage()),
    GetPage(name: AppRoutes.addOrigin, page: () => AddOriginPage()),
    GetPage(name: AppRoutes.addDestination, page: () => AddDestinationPage()),
    GetPage(name: AppRoutes.addPackage, page: () => AddPackagePage()),
    GetPage(name: AppRoutes.successPickup, page: () => PickupSuccessPage()),
  ];
}
