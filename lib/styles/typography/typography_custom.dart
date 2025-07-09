import 'package:flutter/material.dart';
import '../colors/colors_custom.dart';
import '../layouts/fonts.dart';

class TypographyTextTheme {
  static TextTheme lightTextTheme = const TextTheme(

    headlineLarge: TextStyle(
      fontSize: FontSize.f24,
      fontWeight: FontWeight.w700,
      color: CustomColors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: FontSize.f18,
      fontWeight: FontWeight.w700,
      color: CustomColors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: FontSize.f14,
      fontWeight: FontWeight.w600,
      color: CustomColors.black,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FontSize.f18,
      color: CustomColors.black,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FontSize.f16,
      color: CustomColors.black,
    ),
    bodySmall: TextStyle(
      fontSize: FontSize.f12,
      fontWeight: FontWeight.w400,
      color: CustomColors.black,
    ),
    displaySmall:TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: FontSize.f14,
      color: CustomColors.black,
    ) ,
    displayMedium:TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: FontSize.f16,
      color: CustomColors.black,
    ) ,
    displayLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FontSize.f14,
      color: CustomColors.black,
    ) ,

    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FontSize.f16,
      color: CustomColors.black,
    ),
    titleMedium:TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FontSize.f12,
      color: CustomColors.purple,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FontSize.f20,
      color: CustomColors.black,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: FontSize.f20,
      color: CustomColors.black,
    ),
    labelSmall:  TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: FontSize.f12,
      color: CustomColors.black,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: FontSize.f16,
      color: CustomColors.white,
    ),
  );
}
