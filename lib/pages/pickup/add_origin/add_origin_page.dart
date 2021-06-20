import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packboss/routes/app_pages.dart';
import 'package:packboss/themes/index.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'add_origin_controller.dart';

class AddOriginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddOriginController>(
      init: AddOriginController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorTheme.whiteColor,
        appBar: AppBar(
          title: Text(
            'Pickup',
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
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 32, right: 32, top: 64),
            decoration: BoxDecoration(color: ColorTheme.whiteColor),
            child: Center(
              child: controller.isLoading
                  ? LoadingIndicator(
                      indicatorType: Indicator.orbit,
                      color: ColorTheme.blueColor,
                    )
                  : Card(
                      elevation: 2,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pickup Details',
                                style: TextStyle(
                                  color: ColorTheme.blueColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 32,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 32,
                                    width: 128,
                                    child: TextField(
                                      controller:
                                          controller.countryNameController,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8, left: 8),
                                          filled: true,
                                          fillColor: ColorTheme.textBoxColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Country Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    height: 32,
                                    width: 128,
                                    child: TextField(
                                      controller:
                                          controller.provinceNameController,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8, left: 8),
                                          filled: true,
                                          fillColor: ColorTheme.textBoxColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Province Name'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 32,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 32,
                                    width: 128,
                                    child: TextField(
                                      controller:
                                          controller.regionNameController,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8, left: 8),
                                          filled: true,
                                          fillColor: ColorTheme.textBoxColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Region Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    height: 32,
                                    width: 128,
                                    child: TextField(
                                      controller:
                                          controller.postCalCodeController,
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8, left: 8),
                                          filled: true,
                                          fillColor: ColorTheme.textBoxColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Postcal Code'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 136,
                              child: TextField(
                                controller:
                                    controller.detailAddressCodeController,
                                textAlign: TextAlign.start,
                                minLines: 6,
                                maxLines: 6,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 8, left: 8),
                                    filled: true,
                                    fillColor: ColorTheme.textBoxColor,
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Detail Address'),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 32,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: ColorTheme.buttonActiveColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: !controller.isButtonLoading
                                    ? Text(
                                        controller.isDataSaved
                                            ? 'Update Address'
                                            : 'Save Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorTheme.whiteColor,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                        ),
                                      )
                                    : Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: CircularProgressIndicator(),
                                      ),
                                onPressed: controller.isDataSaved
                                    ? controller.tapUpdateAddress
                                    : controller.tapSaveAddress,
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
