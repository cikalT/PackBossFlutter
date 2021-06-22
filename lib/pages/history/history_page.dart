import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';

import 'history_controller.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      init: HistoryController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          titleSpacing: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: ColorTheme.gradientTopColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Your Package History',
            style: TextStyle(color: ColorTheme.whiteColor),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorTheme.whiteColor,
          ),
          child: Text(
            'Your Total: Rp. ${controller.totalTransaction}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: ColorTheme.blueColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                        width: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: ColorTheme.whiteColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Filter',
                              style: TextStyle(
                                color: ColorTheme.blueColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DropdownButton(
                              hint: Text(
                                'Select Filter',
                                style: TextStyle(
                                  color: ColorTheme.blueColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              icon: Icon(Icons.arrow_drop_down),
                              underline: SizedBox(),
                              value: controller.dropDownValue,
                              onChanged: (newValue) {
                                controller.dropDownValue = newValue;
                                controller.changeFilter(newValue);
                                print(newValue);
                                controller.update();
                              },
                              items: controller.filterList.map((valueItem) {
                                return DropdownMenuItem(
                                  child: Text(
                                    AppConfig.getDeliveryStatus(valueItem),
                                    style: TextStyle(
                                      color: ColorTheme.blueColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  value: valueItem,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: List.generate(
                            controller.filteredTransactionDataList.length,
                            (index) => GestureDetector(
                              onTap: () {
                                controller.tapDetailTransaction(controller
                                    .filteredTransactionDataList[index]
                                    .receiptNumber);
                              },
                              child: Card(
                                elevation: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 24),
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Package',
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
                                            '${controller.filteredTransactionDataList[index].package.packageName}',
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
                                            'Package Number',
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
                                            '${controller.filteredTransactionDataList[index].receiptNumber}',
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
                                            'Status',
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
                                              '${AppConfig.getDeliveryStatus(controller.filteredTransactionDataList[index].status)}',
                                              style: TextStyle(
                                                color: ColorTheme.blackColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Text(
                                            'Total',
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
                                              'Rp. ${controller.filteredTransactionDataList[index].totalPrice}',
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
                              ),
                            ),
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
