import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
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
            'Package',
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
                                'Package Details',
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
                              child: TextField(
                                controller: controller.packageNameController,
                                textAlign: TextAlign.start,
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
                                    hintText: 'Item Name'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 32,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: DropdownButton(
                                  hint: Text('Select Category'),
                                  icon: Icon(Icons.arrow_drop_down),
                                  underline: SizedBox(),
                                  value: controller.dropDownValue,
                                  onChanged: (newValue) {
                                    controller.dropDownValue = newValue;
                                    print(newValue);
                                    controller.update();
                                  },
                                  items:
                                      controller.categoryList.map((valueItem) {
                                    return DropdownMenuItem(
                                      child: Text(valueItem.categoryName),
                                      value: valueItem.id,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 32,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 32,
                                    width: 64,
                                    child: TextField(
                                      controller:
                                          controller.packageWeightController,
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
                                          hintText: 'Weight'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('Kg'),
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
                                    width: 64,
                                    child: TextField(
                                      controller:
                                          controller.packageLengthController,
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
                                          hintText: 'Length'),
                                    ),
                                  ),
                                  Text('cm'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    height: 32,
                                    width: 64,
                                    child: TextField(
                                      controller:
                                          controller.packageWidthController,
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
                                          hintText: 'Width'),
                                    ),
                                  ),
                                  Text('cm'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    height: 32,
                                    width: 64,
                                    child: TextField(
                                      controller:
                                          controller.packageHeightController,
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
                                          hintText: 'Height'),
                                    ),
                                  ),
                                  Text('cm'),
                                ],
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
                                        'Save Package',
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
                                onPressed: controller.tapSavePackage,
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
