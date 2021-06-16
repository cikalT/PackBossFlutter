import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class IndexController extends GetxController {
  bool isLoading = false;
  bool isLogin = false;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    Future.delayed(Duration(milliseconds: 700), () async {
      isLogin = await AppPreference.isLogin();
      if (isLogin) {
        Get.offNamed(AppRoutes.homePage);
      } else {
        Get.offNamed(AppRoutes.loginPage);
      }
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
