import 'package:flutter/material.dart';
import 'package:teacher_client/core/resources/fonts.dart';

import 'colors.dart';

class AppThemes {
  static final elevatedButtonTheme = ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.orange),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))));
  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(AppColors.orange)
    )
  );

  static const textStyle = TextStyle(
    fontFamily: AppFonts.ptSans
  );

  static final textTheme = TextTheme(
    headlineLarge: textStyle.copyWith(
      fontSize: 48.0,
      fontWeight: FontWeight.w700
    ),
    displayLarge: textStyle.copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w700
    ),
    displayMedium: textStyle.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w700
    ),
    displaySmall: textStyle.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400
    )
  );
}
