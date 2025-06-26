
import 'package:flutter/material.dart';

import '../colors/colors_custom.dart';
import '../layouts/fonts.dart';


class AppTextThemes {
  static const TextStyle h1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
    height: 1.2,
    letterSpacing: -1.5,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: FontSize.f24,
    fontWeight: FontWeight.w700,
    color: CustomColors.black900,

  );

  static const TextStyle body = TextStyle(
    fontSize: FontSize.f16,
    fontWeight: FontWeight.w400,
    color: CustomColors.black50,
  );
}
