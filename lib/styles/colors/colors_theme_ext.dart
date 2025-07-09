import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bgColor,
    required this.headingTextColor,
    required this.bodyTextColor,
    required this.primaryColor,
    required this.buttonBgColor,
    required this.gradientHome,
    required this.greyBorderColor,
  });

  final Color bgColor;
  final Color headingTextColor;
  final Color bodyTextColor;
  final Color primaryColor;
  final Color buttonBgColor;
  final Color greyBorderColor;

  final List<Color> gradientHome;

  ThemeExtension<AppColors> copyWith({
    Color? bgColor,
    Color? headingTextColor,
    Color? bodyTextColor,
    Color? buttonBgColor,
    List<Color>? gradientHome,
    Color? greyBorderColor,
  }) {
    return AppColors(
      bgColor: bgColor ?? this.bgColor,
      bodyTextColor: bodyTextColor ?? this.bodyTextColor,
      headingTextColor: headingTextColor ?? this.headingTextColor,
      primaryColor: primaryColor ?? this.primaryColor,
      buttonBgColor: buttonBgColor ?? this.buttonBgColor,
      gradientHome: gradientHome ?? this.gradientHome,
      greyBorderColor: greyBorderColor ?? this.greyBorderColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other,
      double t,
      ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      bgColor: bgColor,
      bodyTextColor: bodyTextColor,
      headingTextColor: headingTextColor,
      primaryColor: primaryColor,
      buttonBgColor: buttonBgColor,
      gradientHome: gradientHome,
      greyBorderColor: greyBorderColor,
    );
  }
}
