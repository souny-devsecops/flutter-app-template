import 'package:flutter/material.dart';

import 'app_text_styles.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.colorBackground,
    fontFamily: "NotoSansLao",
    appBarTheme: appBarTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.colorPrimary,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: AppColors.colorPrimary,
    elevation: 0,
    centerTitle: true,
    iconTheme: const IconThemeData(color: AppColors.colorWhite),
    titleTextStyle: AppTextStyles.appbarTextStyle,
  );
}

class AppColors {
  static const Color colorPrimary = Color(0xFFea3e63);
  static const Color colorPrimaryLight = Color(0xFFf791a8);
  static const Color colorPrimaryDark = Color(0xFF0f2a4b);
  static const Color colorSecondary = Color(0xFF4bae6e);
  static const Color colorSecondaryLight = Color(0xFFcfe48d);
  static const Color colorAccent = Color.fromRGBO(57, 149, 119, 1);
  static const Color colorAccentLight = Color.fromRGBO(225, 239, 235, 1);
  static const Color colorAccentDark = Color.fromRGBO(14, 78, 57, 1);
  static const Color colorTint900 = Color.fromRGBO(27, 32, 43, 1);
  static const Color colorTint800 = Color.fromRGBO(47, 55, 71, 1);
  static const Color colorTint700 = Color.fromRGBO(76, 85, 102, 1);
  static const Color colorTint600 = Color.fromRGBO(116, 128, 148, 1);
  static const Color colorTint500 = Color.fromRGBO(163, 174, 190, 1);
  static const Color colorTint400 = Color.fromRGBO(205, 213, 223, 1);
  static const Color colorTint300 = Color.fromRGBO(227, 232, 239, 1);
  static const Color colorTint200 = Color.fromRGBO(238, 242, 247, 1);
  static const Color colorTint100 = Color.fromRGBO(248, 250, 252, 1);
  static const Color colorSuccess = Color(0xFF16ad25);
  static const Color colorInfo = Color(0xFF0e66d0);
  static const Color colorWarning = Color(0xFFeb8600);
  static const Color colorYellowWarning = Color(0xffFFE600);
  static const Color colorWarningLight = Color.fromRGBO(255, 244, 224, 1);
  static const Color colorWarningDark = Color.fromRGBO(82, 56, 10, 1);
  static const Color colorError = Color(0xFFd00e0e);
  static const Color colorErrorLight = Color.fromRGBO(253, 229, 229, 1);
  static const Color colorErrorDark = Color.fromRGBO(58, 7, 7, 1);
  static const Color colorWhite = Color.fromRGBO(255, 255, 255, 1);
  static const Color toolbarColor = Color.fromRGBO(27, 32, 43, 1);
  static const Color colorBlack = Color.fromRGBO(0, 0, 0, 1);
  static const Color colorBlackTransparent = Color.fromRGBO(0, 0, 0, .6);
  static const Color colorBlackTransparent1 = Color.fromRGBO(0, 0, 0, .2);
  static const Color colorBlueLight = Color.fromRGBO(92, 206, 255, 0.14);
  static const Color colorBlue = Color.fromRGBO(66, 133, 244, .8);
  static const Color colorTip = Color.fromRGBO(80, 80, 244, .8);
  static const Color colorBackColor = Color.fromRGBO(229, 229, 229, 1);
  static const Color colorBackground = Color(0xFFf9f9f8);
  static Color colorHighLight = const Color(0xFF00A99D);
}
