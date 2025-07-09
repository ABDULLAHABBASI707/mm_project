import 'package:flutter/material.dart';

import 'colors_custom.dart';

class CustomColorScheme {
  static ColorScheme light = const ColorScheme.light(
    primary: CustomColors.black,
  );
  static ColorScheme dark = const ColorScheme.dark(
    primary: CustomColors.white50,
  );
}
