import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'tracking_controller.dart';

class TrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrackingController>(
      init: TrackingController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          titleSpacing: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: ColorTheme.gradientTopColor,
          elevation: 0,
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
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
