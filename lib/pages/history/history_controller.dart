import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/apis/package/get_history_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class HistoryController extends GetxController {
  bool isLoading = false;

  List<TransactionData> transactionDataList = [];
  List<int> transactionPriceList = [];

  int totalTransaction = 0;

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    await getTransactionHistory();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTransactionHistory() async {
    String userId = await AppPreference.getUserId();
    print('userId = $userId');

    var result = await GetHistoryApi().request(userId);
    if (result.status) {
      transactionDataList = result.listData;
      transactionDataList.forEach((element) {
        transactionPriceList.add(int.parse(element.totalPrice));
      });
      totalTransaction = transactionPriceList.fold(
          0, (previous, current) => previous + current);
      isLoading = false;
      update();
    } else {
      Get.back();
    }
  }

  String setStatus(String status) {
    String convertedStatus = '';
    switch (status) {
      case 'waiting-for-pickup':
        convertedStatus = 'Waiting For Pickup';
        break;
    }
    return convertedStatus;
  }

  tapDetailTransaction(String transactionId) {
    print('transaction id : $transactionId');
  }
}
