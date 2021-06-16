import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'add_package_controller.dart';

class AddPackagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddPackageController>(
      init: AddPackageController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          title: Text(
            'Package Detail',
            style: TextStyle(
              color: ColorTheme.blueColor,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: ColorTheme.whiteColor,
          shadowColor: ColorTheme.whiteColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: ColorTheme.blueColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: ColorTheme.whiteColor),
          ),
        ),
      ),
    );
  }
}