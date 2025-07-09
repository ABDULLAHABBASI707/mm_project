import 'package:flutter/material.dart';
import '../colors/colors_custom.dart';
import '../colors/colors_scheme.dart';
import '../colors/colors_theme_ext.dart';
import '../fonts_name.dart';
import '../typography/typography_custom.dart';

class ThemeLight {
  static ThemeData get lightTheme => _lightTheme;

  static final _lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: CustomColorScheme.light,
    textTheme: TypographyTextTheme.lightTextTheme,
    scaffoldBackgroundColor: CustomColors.black,
    fontFamily: neueHaasGrotesk,
    appBarTheme:  AppBarTheme(
      backgroundColor: CustomColors.purple,
      elevation: 0,
      surfaceTintColor: Colors.blue,
    ),
    extensions: <ThemeExtension<dynamic>>[
      AppColors(
        bgColor: CustomColors.white,
        headingTextColor: CustomColors.black,
        bodyTextColor: CustomColors.grey50,
        primaryColor: CustomColors.pink,
        buttonBgColor: CustomColors.purple,
        gradientHome: CustomColors.homeGradient,
        greyBorderColor: CustomColors.grey200,
      ),
    ],
  );
}
