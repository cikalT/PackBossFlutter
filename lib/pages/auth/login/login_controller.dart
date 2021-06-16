import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/auth/login_api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';
import 'package:packboss/routes/index.dart';
import 'package:packboss/themes/index.dart';

class LoginController extends GetxController {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginData loginData;

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

  Future<bool> onRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {});
    return true;
  }

  tapLogin() async {
    isLoading = true;
    update();
    String email = emailController.text;
    String password = passwordController.text;
    var result = await LoginApi().request(email: email, password: password);
    if (result.status) {
      loginData = result.data;
      print('sukses');
      Get.snackbar('Berhasil', 'Selamat datang');
      await AppPreference.setMobileToken(loginData.accessToken);
      Get.toNamed(AppRoutes.homePage,
          arguments: ScreenArguments()..id = 'id nya mas');
      isLoading = false;
      update();
    } else {
      print('gagal');
      Get.snackbar('Gagal', 'Periksa form data!',
          backgroundColor: ColorTheme.whiteColor);
      isLoading = false;
      update();
    }
  }

  tapSignUp() {
    Get.toNamed(AppRoutes.registerPage);
  }
}
