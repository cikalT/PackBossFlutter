import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/apis/auth/login_api.dart';
import 'package:packboss/apis/auth/logout_api.dart';
import 'package:packboss/helpers/app_preference.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/pages/home/items/check_package.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class HomeController extends GetxController {
  bool isLoading = false;

  final packageNumberController = TextEditingController();

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

  tapCheck() {
    if (packageNumberController.text == null ||
        packageNumberController.text == '') {
      Get.back();
    } else {
      String packageNumber = packageNumberController.text;
      Get.offNamed(AppRoutes.detailPage, arguments: packageNumber);
    }
  }

  tapLogOut() async {
    String token = await AppPreference.getMobileToken();
    print('token: $token');
    var result = await LogoutApi().request();
    if (result.status) {
      Get.offAllNamed(AppRoutes.indexPage);
      await AppPreference.setLogin(false);
      await AppPreference.setDestinationSaved(false);
      // await AppPreference.setOriginSaved(false);
      await AppPreference.setPackageSaved(false);
    } else {
      Get.snackbar('Gagal', 'Terjadi kesalahan!',
          backgroundColor: ColorTheme.whiteColor);
    }
  }

  tapCheckPackageHistory() {
    Get.toNamed(AppRoutes.historyPage);
  }

  tapSendGoods() {
    Get.toNamed(AppRoutes.pickupPage);
  }
}
