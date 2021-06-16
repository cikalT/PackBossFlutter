import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/register_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class RegisterController extends GetxController {
  bool isLoading = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

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

  @override
  void onClose() {
    super.onClose();
  }

  Future<bool> onRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {});
    return true;
  }

  tapSignUp() async {
    isLoading = true;
    update();
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;
    String password = passwordController.text;
    String cPassword = cPasswordController.text;
    var result = await RegisterApi().request(
        name: name,
        email: email,
        phone: phone,
        password: password,
        cPassword: cPassword);
    if (result.status) {
      registerData = result.data;
      print('sukses');
      Get.snackbar('Berhasil', 'Silahkan login');
      Get.offNamed(AppRoutes.loginPage);
      isLoading = false;
      update();
    } else {
      print('gagal');
      Get.snackbar('Gagal', 'Periksa form data!');
      isLoading = false;
      update();
    }
  }

  tapLogin() {
    if (!isLoading) {
      Get.offNamed(AppRoutes.loginPage);
    }
  }
}
