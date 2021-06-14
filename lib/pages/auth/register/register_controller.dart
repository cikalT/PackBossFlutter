import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class RegisterController extends GetxController {
  bool isLoading = false;
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  //   String name = nameController.text;
  //   String username = usernameController.text;
  //   String email = emailController.text;
  //   String password = passwordController.text;
  //   String cPassword = cPasswordController.text;

  RegisterData registerData;
  ScreenArguments screenArguments;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    if (Get.arguments != null) {
      screenArguments = Get.arguments;
    }
    super.onReady();
  }

  Future<bool> onRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {});
    return true;
  }

  tapLogin() {
    if (!isLoading) {
      Get.offNamed(AppRoutes.loginPage);
    }
  }
}
