import 'dart:ui';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class AppConst {
  static Color primaryBackground = hexToColor('#0D0D0D');
  static Color secondaryBackground = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#5E92F3');
  static Color secondaryDarkAppColor = Colors.white;

  static Color appWhite500 = hexToColor('#FFFFFF');
  static Color appWhite400 = hexToColor('#FBFBFB');
  static Color appWhite300 = hexToColor('#EFEFEF');
  static Color appWhite200 = hexToColor('#E0E0E0');
  static Color appWhite100 = hexToColor('#D2D2D2');

  static Color appBlack500 = hexToColor('#0D0D0D');
  static Color appBlack400 = hexToColor('#121212');
  static Color appBlack300 = hexToColor('#161616');
  static Color appBlack200 = hexToColor('#3D3D3D');
  static Color appBlack100 = hexToColor('#8A8A8A');

  static Color appYoyo600 = hexToColor('#772CB3');

  //setting common device dimensions here for mobile / tablet / desktop
  static double mobileWidth =
      450; //Common Mobile Screen Resolution Sizes Worldwide -> 360×800 & <414×896
  static double tabletWidth =
      768; //Common Tablet Screen Resolution Sizes Worldwide -> 768×1024 & <1280×800
  static double webWidth =
      1280; //Common Desktop Screen Resolution Sizes Worldwide -> 1280×720 & <1920×1080

  static String gitProfile = "https://github.com/Vigneshkna";
  // static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  // static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  // static Color secondaryAppColor = hexToColor('#5E92F3');
  // static Color secondaryDarkAppColor = Colors.white;
}
