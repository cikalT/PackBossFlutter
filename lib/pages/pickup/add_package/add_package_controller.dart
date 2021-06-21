import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/pickup/add_package_api.dart';
import 'package:packboss/apis/pickup/get_package_category_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class AddPackageController extends GetxController {
  bool isLoading = false;
  bool isButtonLoading = false;

  bool isPackageSaved = false;
  String dropDownValue;
  String recipientName = '';
  String recipientPhone = '';

  final packageNameController = TextEditingController();
  final packageWeightController = TextEditingController();
  final packageLengthController = TextEditingController();
  final packageWidthController = TextEditingController();
  final packageHeightController = TextEditingController();

  List<CategoryData> categoryList = [];
  AddPackageData addPackageData;

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    recipientName = await AppPreference.getReqRecipientName();
    recipientPhone = await AppPreference.getReqRecipientPhone();
    isPackageSaved = await AppPreference.isDestinationSaved();
    if (isPackageSaved) {
      packageNameController.text = await AppPreference.getReqPackageName();
      dropDownValue = await AppPreference.getReqPackageType();
      packageWeightController.text = await AppPreference.getReqPackageWeight();
      packageLengthController.text = await AppPreference.getReqPackageLength();
      packageWidthController.text = await AppPreference.getReqPackageWidth();
      packageHeightController.text = await AppPreference.getReqPackageHeight();
    }
    await getPackageCategory();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getPackageCategory() async {
    var result = await GetPackageCategoryApi().request();
    if (result.status) {
      categoryList = result.listData;
      isLoading = false;
      update();
    } else {
      Get.back();
    }
  }

  tapSavePackage() async {
    isButtonLoading = true;
    update();
    String category = dropDownValue;
    String packageName = packageNameController.text;
    String packageWeight = packageWeightController.text;
    String packageDimension =
        '${packageLengthController.text} cm x ${packageWidthController.text} cm x ${packageHeightController.text} cm';
    print(
        '$category , $packageName, $packageWeight, $packageDimension, $recipientName, $recipientPhone');
    var result = await AddPackageApi().request(
        category: category,
        packageName: packageName,
        recipientName: recipientName,
        recipientPhone: recipientPhone,
        weight: packageWeight,
        dimension: packageDimension);
    if (result.status) {
      addPackageData = result.data;
      await AppPreference.setDestinationSaved(true);
      await AppPreference.setReqPackageId(addPackageData.id);
      await AppPreference.setReqPackageName(addPackageData.packageName);
      await AppPreference.setReqPackageType(addPackageData.idCategory);
      await AppPreference.setReqPackageWeight(addPackageData.weight);
      await AppPreference.setReqPackageLength(packageLengthController.text);
      await AppPreference.setReqPackageWidth(packageWidthController.text);
      await AppPreference.setReqPackageHeight(packageHeightController.text);
      isButtonLoading = false;
      update();
      Get.back();
    } else {
      print('gagal');
      Get.snackbar('Gagal', 'Periksa form data!',
          backgroundColor: ColorTheme.whiteColor);
      isButtonLoading = false;
      update();
    }
  }
}
