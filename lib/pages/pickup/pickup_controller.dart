import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class PickupController extends GetxController {
  bool isLoading = false;
  bool isSubmittedOrigin = false;
  bool isSubmittedDestination = false;
  bool isSubmittedPackage = false;

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

  tapAddOrigin() async {
    Get.toNamed(AppRoutes.addOrigin);
  }

  tapAddDestination() async {
    Get.toNamed(AppRoutes.addDestination);
  }

  tapAddPackage() async {
    Get.toNamed(AppRoutes.addPackage);
  }
}
