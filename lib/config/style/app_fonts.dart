import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class AppFonts {
  static TextStyle headline1 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40.0.sp,
      color: AppColors.headLine1);

  static TextStyle headline2 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 24.0.sp,
      color: AppColors.headLine2);

  static TextStyle headline3 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 24.0.sp, color: Colors.white);

  static TextStyle bodyText = TextStyle(
    fontWeight: FontWeight.w900,
    color: const Color(0xff004B40),
    fontSize: 20.0.sp,
  );

  static TextStyle bodyText1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xff006754),
    fontSize: 16.0.sp,
  );

  static TextStyle bodyText2 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 12.0.sp,
  );

  static TextStyle bodyText3 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 11.0.sp,
  );

  static TextStyle bodyText4 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 13.0.sp,
  );

  static TextStyle regular1 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12.0.sp,
      color: AppColors.regular);

  static TextStyle quranTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.0.sp,
      fontFamily: 'uthmanic',
      color: AppColors.headLine2);

  static TextStyle quranText = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0.sp,
      fontFamily: 'uthmanic',
      color: AppColors.headLine2);

  static TextStyle quranEnText = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16.0.sp,
      fontFamily: 'uthmanic',
      color: AppColors.headLine2);
}
