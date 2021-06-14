import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packboss/themes/index.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: GradientBg.getGradient(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                          'Log In',
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
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorTheme.textBoxColor,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Email or Username'),
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: TextField(
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
                          controller: controller.passwordController,
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
                                  'Log In',
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
                              controller.tapLogin();
                              // } else {
                              //   // tapSignIn(false);
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
                              'New to PackBoss?',
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
                                'Sign up now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorTheme.darkBlueColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {
                                controller.tapSignUp();
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
