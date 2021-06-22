import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/pickup/add_transaction_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class PickupController extends GetxController {
  bool isLoading = false;
  bool isButtonLoading = false;

  bool isSubmittedOrigin = false;
  bool isSubmittedDestination = false;
  bool isSubmittedPackage = false;

  AddTransactionData addTransactionData;
  ScreenArguments screenArguments;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    isSubmittedOrigin = await AppPreference.isOriginSaved();
    isSubmittedDestination = await AppPreference.isDestinationSaved();
    isSubmittedPackage = await AppPreference.isPackageSaved();
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

  tapRequestPickup() async {
    isButtonLoading = true;
    update();
    String destinationId = await AppPreference.getReqDestinationId();
    String packageId = await AppPreference.getReqPackageId();
    print(
        'origin: $isSubmittedOrigin, destination: $isSubmittedDestination, package: $isSubmittedPackage');
    print('destination id : $destinationId, package id : $packageId');
    // if (isSubmittedOrigin && isSubmittedDestination && isSubmittedPackage) {
    if (isSubmittedOrigin || isSubmittedDestination || isSubmittedPackage) {
      var result = await AddTransactionApi()
          .request(destinationId: destinationId, packageId: packageId);
      if (result.status) {
        addTransactionData = result.data;
        isButtonLoading = false;
        update();
        await AppPreference.setResiNumber(addTransactionData.receiptNumber);
        await AppPreference.setTotalMoney(
            addTransactionData.totalPrice.toString());
        await AppPreference.setDatePackage(addTransactionData.createdAt);
        // screenArguments.id = addTransactionData.receiptNumber;
        // screenArguments.numberInt = addTransactionData.totalPrice;
        // screenArguments.title = addTransactionData.createdAt;
        Get.offNamed(AppRoutes.successPickup, arguments: screenArguments);
      } else {
        Get.snackbar('Gagal', 'Ada data yang belum terisi!',
            backgroundColor: ColorTheme.whiteColor);
        isButtonLoading = false;
        update();
      }
    } else {
      Get.snackbar('Gagal', 'Ada data yang belum terisi!',
          backgroundColor: ColorTheme.whiteColor);
      isButtonLoading = false;
      update();
    }
  }
}
