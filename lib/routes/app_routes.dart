part of 'app_pages.dart';

abstract class AppRoutes {
  static const indexPage = 'home/index';
  static const loginPage = 'auth/login';
  static const registerPage = 'auth/register';
  static const homePage = 'user/home';
  static const pickupPage = 'user/pickup';
  static const trackingPage = 'user/tracking';
  static const historyPage = 'user/history';
  static const detailPage = 'detail/page';
  static const addOrigin = 'pickup/add-origin';
  static const addDestination = 'pickup/add-destination';
  static const addPackage = 'pickup/add-package';
  static const successPickup = 'pickup/success';
}
