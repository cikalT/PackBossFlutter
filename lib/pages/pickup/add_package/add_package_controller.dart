import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/pickup/get_package_category_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class AddPackageController extends GetxController {
  bool isLoading = false;
  String dropDownValue;
  String recipientName = '';
  String recipientPhone = '';

  final packageNameController = TextEditingController();
  final packageWeightController = TextEditingController();
  final packageLengthController = TextEditingController();
  final packageWidthController = TextEditingController();
  final packageHeightController = TextEditingController();

  List<CategoryData> categoryList = [];

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
    String category = dropDownValue;
    String packageName = packageNameController.text;
    String packageWeight = packageWeightController.text;
    String packageDimension =
        '${packageLengthController.text} x ${packageLengthController.text} x ${packageHeightController.text}';

    print(
        '$category , $packageName, $packageWeight, $packageDimension, $recipientName, $recipientPhone');
  }
}
