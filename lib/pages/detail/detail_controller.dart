import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/package/get_tracking_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class DetailController extends GetxController {
  bool isLoading = false;

  List<TrackingData> trackingDataList = [];

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    String transactionId = '';
    transactionId = Get.arguments;
    print('transaction id: $transactionId');
    await getTrackingDetail(transactionId);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTrackingDetail(String transactionId) async {
    var result = await GetTrackingApi().request(transactionId);
    if (result.status) {
      trackingDataList = result.listData;
      isLoading = false;
      update();
    } else {
      Get.back();
    }
  }
}
