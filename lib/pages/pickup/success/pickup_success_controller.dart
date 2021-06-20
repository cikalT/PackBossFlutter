import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/helpers/app_preference.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class PickupSuccessController extends GetxController {
  bool isLoading = false;

  String resiNumber = '';
  int money = 0;
  String dateTime = '';
  DateTime dateNow = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  ScreenArguments screenArguments;

  @override
  void onInit() async {
    isLoading = true;
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    resiNumber = await AppPreference.getResiNumber();
    money = int.parse(await AppPreference.getTotalMoney());
    dateTime = await AppPreference.getDatePackage();
    dateNow = DateTime.parse(dateTime);
    timeOfDay = TimeOfDay.fromDateTime(dateNow);
    timeOfDay = timeOfDay.replacing(hour: timeOfDay.hour + 1);

    // await AppPreference.setOriginSaved(false);
    await AppPreference.setDestinationSaved(false);
    await AppPreference.setPackageSaved(false);

    print(timeOfDay);
    isLoading = false;
    update();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
