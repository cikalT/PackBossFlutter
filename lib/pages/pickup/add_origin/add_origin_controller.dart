import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/pickup/add_origin_api.dart';
import 'package:packboss/apis/pickup/get_origin_api.dart';
import 'package:packboss/apis/pickup/update_origin_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class AddOriginController extends GetxController {
  bool isLoading = false;
  bool isButtonLoading = false;
  bool isDataSaved = false;

  final countryNameController = TextEditingController();
  final provinceNameController = TextEditingController();
  final regionNameController = TextEditingController();
  final postCalCodeController = TextEditingController();
  final detailAddressCodeController = TextEditingController();

  AddOriginData addOriginData;
  SavedOriginData savedOriginData;

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    await getSavedOrigin();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getSavedOrigin() async {
    isLoading = true;
    update();
    String userId = await AppPreference.getUserId();
    var result = await GetOriginAPi().request(userId);
    if (result.status) {
      savedOriginData = result.data;
      isDataSaved = true;
      countryNameController.text = savedOriginData.countryName;
      provinceNameController.text = savedOriginData.provinceName;
      regionNameController.text = savedOriginData.regionName;
      postCalCodeController.text = savedOriginData.postalCode;
      detailAddressCodeController.text = savedOriginData.detailAddress;
      await AppPreference.setReqOriginId(savedOriginData.id);
      isLoading = false;
      update();
    } else {
      isLoading = false;
      update();
    }
  }

  tapSaveAddress() async {
    isButtonLoading = true;
    update();
    String countryName = countryNameController.text;
    String provinceName = provinceNameController.text;
    String regionName = regionNameController.text;
    String postalCode = postCalCodeController.text;
    String detailAddress = detailAddressCodeController.text;
    var result = await AddOriginApi().request(
        countryName: countryName,
        provinceName: provinceName,
        regionName: regionName,
        postalCode: postalCode,
        detailAddress: detailAddress);
    if (result.status) {
      addOriginData = result.data;
      await setPreference();
      print('data: ${addOriginData.id}');
      isButtonLoading = false;
      update();
      Get.back();
    } else {
      print('gagal');
      Get.snackbar('Gagal', 'Periksa form data!',
          backgroundColor: ColorTheme.whiteColor);
      isLoading = false;
      update();
    }
  }

  tapUpdateAddress() async {
    isButtonLoading = true;
    update();
    String originId = await AppPreference.getReqOriginId();
    String countryName = countryNameController.text;
    String provinceName = provinceNameController.text;
    String regionName = regionNameController.text;
    String postalCode = postCalCodeController.text;
    String detailAddress = detailAddressCodeController.text;
    var result = await UpdateOriginAPi().request(
        originId: originId,
        countryName: countryName,
        provinceName: provinceName,
        regionName: regionName,
        postalCode: postalCode,
        detailAddress: detailAddress);
    if (result.status) {
      addOriginData = result.data;
      await setPreference();
      print('data: ${addOriginData.id}');
      isButtonLoading = false;
      update();
      Get.back();
    } else {
      print('gagal');
      Get.snackbar('Gagal', 'Periksa form data!',
          backgroundColor: ColorTheme.whiteColor);
      isLoading = false;
      update();
    }
  }

  setPreference() async {
    await AppPreference.setOriginSaved(true);
    await AppPreference.setReqOriginId(addOriginData.id);
    await AppPreference.setReqOriginAddress(addOriginData.detailAddress);
  }
}
