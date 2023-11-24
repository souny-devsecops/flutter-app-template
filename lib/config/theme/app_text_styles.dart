import 'package:flutter/material.dart';

import 'app_size_config.dart';
import 'app_themes.dart';

class AppTextStyles {
  static TextStyle bigTitleWhite = TextStyle(
    fontSize: AppSizeConfig.blockSize * 8,
    fontWeight: FontWeight.bold,
    color: AppColors.colorWhite,
    fontFamily: "NotoSansLao",
  );
  static TextStyle appbarTextStyle = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4.5,
    fontWeight: FontWeight.bold,
    color: AppColors.colorWhite,
    fontFamily: "NotoSansLao",
  );
  // Large Title
  static TextStyle largeTitle = TextStyle(
    fontSize: AppSizeConfig.blockSize * 5,
    fontWeight: FontWeight.bold,
    fontFamily: "NotoSansLao",
  );

  static TextStyle largeTitleWhite = TextStyle(
    fontSize: AppSizeConfig.blockSize * 5,
    fontWeight: FontWeight.bold,
    color: AppColors.colorWhite,
    fontFamily: "NotoSansLao",
  );
  static TextStyle largeTitlePrimary = TextStyle(
    fontSize: AppSizeConfig.blockSize * 5,
    fontWeight: FontWeight.bold,
    color: AppColors.colorPrimary,
    fontFamily: "NotoSansLao",
  );
  // Title
  static TextStyle title = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4,
    color: AppColors.colorBlack,
    fontFamily: "NotoSansLao",
  );
  static TextStyle titleWhite = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4,
    color: AppColors.colorWhite,
    fontFamily: "NotoSansLao",
  );
  static TextStyle titleBold = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4,
    color: AppColors.colorTint700,
    fontWeight: FontWeight.bold,
    fontFamily: "NotoSansLao",
  );
  static TextStyle titlePrimaryBold = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4,
    color: AppColors.colorPrimary,
    fontWeight: FontWeight.bold,
    fontFamily: "NotoSansLao",
  );
  static TextStyle titleWhiteBold = TextStyle(
    fontSize: AppSizeConfig.blockSize * 4,
    color: AppColors.colorWhite,
    fontWeight: FontWeight.bold,
    fontFamily: "NotoSansLao",
  );
  // Heading

  // Subheading

  // Body
  static TextStyle body = TextStyle(
    fontSize: AppSizeConfig.blockSize * 3.6,
    color: AppColors.colorTint600,
    fontFamily: "NotoSansLao",
  );
  static TextStyle bodyBole = TextStyle(
      fontSize: AppSizeConfig.blockSize * 3.6,
      color: AppColors.colorTint700,
      fontFamily: "NotoSansLao",
      fontWeight: FontWeight.bold);

  static TextStyle bodyWhiteBold = TextStyle(
      fontSize: AppSizeConfig.blockSize * 3.6,
      color: AppColors.colorWhite,
      fontFamily: "NotoSansLao",
      fontWeight: FontWeight.bold);
  static TextStyle bodyWhite = TextStyle(
    fontSize: AppSizeConfig.blockSize * 3.6,
    color: AppColors.colorWhite,
    fontFamily: "NotoSansLao",
  );
  static TextStyle bodyTint = TextStyle(
    fontSize: AppSizeConfig.blockSize * 3.6,
    color: AppColors.colorTint500,
    fontFamily: "NotoSansLao",
  );
  static TextStyle bodyPrimary = TextStyle(
    fontSize: AppSizeConfig.blockSize * 3.6,
    color: AppColors.colorPrimary,
    fontFamily: "NotoSansLao",
  );
  static TextStyle bodyPrimaryBold = TextStyle(
      fontSize: AppSizeConfig.blockSize * 3.6,
      color: AppColors.colorPrimary,
      fontFamily: "NotoSansLao",
      fontWeight: FontWeight.bold);

  static TextStyle bodySuccessBold = TextStyle(
      fontSize: AppSizeConfig.blockSize * 3.6,
      color: AppColors.colorSuccess,
      fontFamily: "NotoSansLao",
      fontWeight: FontWeight.bold);

  static TextStyle bodyErrorBold = TextStyle(
      fontSize: AppSizeConfig.blockSize * 3.6,
      color: AppColors.colorError,
      fontFamily: "NotoSansLao",
      fontWeight: FontWeight.bold);
}
