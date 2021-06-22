import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/pages/detail/timeline.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'detail_controller.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          titleSpacing: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: ColorTheme.gradientTopColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height / 1.2,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: GradientBg.getGradient(),
            ),
            child: controller.isLoading
                ? LoadingIndicator(
                    indicatorType: Indicator.orbit,
                    color: ColorTheme.whiteColor,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: Timeline(
                          lineColor: ColorTheme.whiteColor,
                          children: List.generate(
                            controller.trackingDataList.length,
                            (index) => Container(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppConfig.getDeliveryStatus(controller
                                        .trackingDataList[index]
                                        .trackingStatus),
                                    style: TextStyle(
                                      color: ColorTheme.whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    AppConfig.convertDate(controller
                                        .trackingDataList[index].updatedAt),
                                    style: TextStyle(
                                      color: ColorTheme.whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          indicators: List.generate(
                            controller.trackingDataList.length,
                            (index) => Icon(
                              AppConfig.getIcons(controller
                                  .trackingDataList[index].trackingStatus),
                              color: ColorTheme.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Card(
                        elevation: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Package Name',
                                    style: TextStyle(
                                      color: ColorTheme.greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '${controller.packageDetailData.packageName}',
                                    style: TextStyle(
                                      color: ColorTheme.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'Package Category',
                                    style: TextStyle(
                                      color: ColorTheme.greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '${controller.packageDetailData.category.categoryName}',
                                    style: TextStyle(
                                      color: ColorTheme.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'Dimension',
                                    style: TextStyle(
                                      color: ColorTheme.greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 264,
                                    child: Text(
                                      '${controller.packageDetailData.dimension}',
                                      style: TextStyle(
                                        color: ColorTheme.blackColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
