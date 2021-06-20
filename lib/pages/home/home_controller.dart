import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/apis/auth/login_api.dart';
import 'package:packboss/helpers/app_preference.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/pages/home/items/check_package.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class HomeController extends GetxController {
  bool isLoading = false;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<bool> onRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {});
    return true;
  }

  tapCheckPackage() {
    showDialog(
      context: Get.context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: CheckPackage(),
        );
      },
    );
  }

  tapProfile() async {
    String token = await AppPreference.getMobileToken();
    print('token: $token');
  }

  tapCheckPackageHistory() {
    Get.toNamed(AppRoutes.historyPage);
  }

  tapSendGoods() {
    Get.toNamed(AppRoutes.pickupPage);
  }
}
