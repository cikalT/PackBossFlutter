import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'register_controller.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: GradientBg.getGradient(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'PackBoss',
                    style: TextStyle(
                      color: ColorTheme.whiteColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  width: 336,
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: ColorTheme.whiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: ColorTheme.darkBlueColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
                          controller: controller.nameController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorTheme.textBoxColor,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Name'),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorTheme.textBoxColor,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Email'),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
                          controller: controller.phoneController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorTheme.textBoxColor,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Phone'),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
                          controller: controller.passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorTheme.textBoxColor,
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Password',
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
                          controller: controller.cPasswordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorTheme.textBoxColor,
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Re-enter Password',
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 48,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: ColorTheme.buttonActiveColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: !controller.isLoading
                              ? Text(
                                  'Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorTheme.whiteColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                )
                              : Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: CircularProgressIndicator(),
                                ),
                          onPressed: () {
                            if (!controller.isLoading) {
                              controller.tapSignUp();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Already have an account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              child: Text(
                                'Log in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorTheme.darkBlueColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {
                                controller.tapLogin();
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
