import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class AddOriginController extends GetxController {
  bool isLoading = false;

  final countryNameController = TextEditingController();
  final provinceNameController = TextEditingController();
  final regionNameController = TextEditingController();
  final postCalCodeController = TextEditingController();
  final detailAddressCodeController = TextEditingController();

  OriginData originData;

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
}
