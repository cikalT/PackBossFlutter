import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/pickup/add_destination_api.dart';
import 'package:packboss/helpers/app_preference.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class AddDestinationController extends GetxController {
  bool isLoading = false;
  bool isButtonLoading = false;

  bool isDestinationSaved = false;

  final recipientNameController = TextEditingController();
  final recipientPhoneController = TextEditingController();
  final countryNameController = TextEditingController();
  final provinceNameController = TextEditingController();
  final regionNameController = TextEditingController();
  final postCalCodeController = TextEditingController();
  final detailAddressCodeController = TextEditingController();

  AddDestinationData addDestinationData;

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    await getDestinationData();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getDestinationData() async {
    isDestinationSaved = await AppPreference.isDestinationSaved();
    if (isDestinationSaved) {
      recipientNameController.text = await AppPreference.getReqRecipientName();
      recipientPhoneController.text =
          await AppPreference.getReqRecipientPhone();
      countryNameController.text =
          await AppPreference.getReqRecipientCountryName();
      provinceNameController.text =
          await AppPreference.getReqRecipientProvinceName();
      regionNameController.text =
          await AppPreference.getReqRecipientRegionName();
      postCalCodeController.text =
          await AppPreference.getReqRecipientPostCalCode();
      detailAddressCodeController.text =
          await AppPreference.getReqRecipientDetailAddress();
    } else {}
    isLoading = false;
    update();
  }

  tapSaveDestination() async {
    isLoading = true;
    isButtonLoading = true;
    update();
    String countryName = countryNameController.text;
    String provinceName = provinceNameController.text;
    String regionName = regionNameController.text;
    String postalCode = postCalCodeController.text;
    String detailAddress = detailAddressCodeController.text;

    var result = await AddDestinationAPi().request(
        countryName: countryName,
        provinceName: provinceName,
        regionName: regionName,
        postalCode: postalCode,
        detailAddress: detailAddress);
    if (result.status) {
      addDestinationData = result.data;
      await setPreference();
      isLoading = false;
      update();
      Get.back();
    } else {
      Get.back();
    }
  }

  setPreference() async {
    String recipientName = recipientNameController.text;
    String recipientPhone = recipientPhoneController.text;
    await AppPreference.setDestinationSaved(true);
    await AppPreference.setReqRecipientName(recipientName);
    await AppPreference.setReqRecipientPhone(recipientPhone);
    await AppPreference.setReqDestinationId(addDestinationData.id);
    await AppPreference.setReqRecipientCountryName(
        addDestinationData.countryName);
    await AppPreference.setReqRecipientProvinceName(
        addDestinationData.provinceName);
    await AppPreference.setReqRecipientRegionName(
        addDestinationData.regionName);
    await AppPreference.setReqRecipientPostCalCode(
        addDestinationData.postalCode);
    await AppPreference.setReqRecipientDetailAddress(
        addDestinationData.detailAddress);
  }
}
