import 'package:flutter/material.dart';

class ColorTheme {
  static Color get primaryColor => HexColor('2F45B');
  static Color get secondaryColor => HexColor('FFC702');
  static Color get gradientTopColor => HexColor('150096');
  static Color get gradientBottomColor => HexColor('4360F9');
  static Color get buttonActiveColor => HexColor('4360F9');
  static Color get buttonDisabledColor => HexColor('FE0000');
  static Color get textBoxColor => HexColor('94A4FC').withOpacity(0.5);
  static Color get blueTextBoxColor => HexColor('ECEAFA');
  static Color get errorBgColor => HexColor('FFFFFF');
  static Color get whiteColor => HexColor('FFFFFF');
  static Color get blackColor => HexColor('000000');
  static Color get greyColor => HexColor('948D8D');
  static Color get greenColor => HexColor('31C037');
  static Color get blueColor => HexColor('2F45B7');
  static Color get darkBlueColor => HexColor('3423A6');
  static Color get redColor => HexColor('FE0000');
  static Color get darkRedColor => HexColor('b00202');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class GradientBg {
  static LinearGradient getGradient() {
    return LinearGradient(
      colors: [
        ColorTheme.gradientTopColor,
        ColorTheme.gradientBottomColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
    );
  }
}
