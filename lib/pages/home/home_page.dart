import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/themes/index.dart';
import 'package:packboss/routes/index.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
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
          actions: [
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.exit_to_app,
                  color: ColorTheme.whiteColor,
                ),
                // child: SvgPicture.asset(
                //   'assets/icons/account-circle.svg',
                //   color: ColorTheme.whiteColor,
                // ),
              ),
              onTap: controller.tapLogOut,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: GradientBg.getGradient(),
            ),
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 300,
                    floating: false,
                    pinned: true,
                    stretch: true,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    leading: Container(),
                    flexibleSpace: FlexibleSpaceBar(
                      stretchModes: [
                        StretchMode.blurBackground,
                        StretchMode.zoomBackground,
                      ],
                      background: Image.asset(
                        'assets/images/bg.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ];
              },
              body: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: ColorTheme.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: ColorTheme.whiteColor,
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/package.svg',
                                      width: 24,
                                      height: 24,
                                      color: ColorTheme.blueColor,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Check Your Package',
                                      style: TextStyle(
                                        color: ColorTheme.darkBlueColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: controller.tapCheckPackage,
                                child: SvgPicture.asset(
                                  'assets/icons/button-arrow.svg',
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: ColorTheme.whiteColor,
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/history.svg',
                                      width: 24,
                                      height: 24,
                                      color: ColorTheme.blueColor,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Delivery History',
                                      style: TextStyle(
                                        color: ColorTheme.darkBlueColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: controller.tapCheckPackageHistory,
                                child: SvgPicture.asset(
                                  'assets/icons/button-arrow.svg',
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: ColorTheme.blueTextBoxColor,
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/add-package.svg',
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'SEND GOODS',
                                      style: TextStyle(
                                        color: ColorTheme.blueColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Send valuable items to anywhere\nwith easier and secure now',
                                      style: TextStyle(
                                        color: ColorTheme.blackColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: controller.tapSendGoods,
                                child: SvgPicture.asset(
                                  'assets/icons/button-arrow.svg',
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
