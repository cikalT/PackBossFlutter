import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'pickup_success_controller.dart';

class PickupSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PickupSuccessController>(
      init: PickupSuccessController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: 0.0,
          title: Transform(
            transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
            child: Text(
              'PackBoss',
              style: TextStyle(
                color: ColorTheme.whiteColor,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: ColorTheme.gradientTopColor,
          elevation: 0,
          leading: Container(),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: GradientBg.getGradient(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 160,
                ),
                Container(
                  child: SvgPicture.asset(
                    'assets/icons/success-request.svg',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Our Team Will Pickup\nYour Package at 10.20',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorTheme.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 88,
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: ColorTheme.buttonActiveColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Back to Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorTheme.whiteColor,
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
