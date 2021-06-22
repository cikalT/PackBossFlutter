import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/themes/index.dart';
import 'package:packboss/routes/index.dart';

import '../home_controller.dart';

class CheckPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => SingleChildScrollView(
        child: Container(
          height: 160,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: controller.packageNumberController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Package Number'),
              ),
              SizedBox(
                child: RaisedButton(
                  onPressed: controller.tapCheck,
                  child: Text(
                    'Check your package',
                    style: TextStyle(color: ColorTheme.whiteColor),
                  ),
                  color: ColorTheme.buttonActiveColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
