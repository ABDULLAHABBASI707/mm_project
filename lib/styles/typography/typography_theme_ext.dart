import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles>{
  const AppTextStyles({
    required this.headinglarge,
    required this.titlemedium,
    required this.bodysmall,

  });
  final TextStyle headinglarge;
  final TextStyle titlemedium;
  final TextStyle bodysmall;

  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? headinglarge,
    TextStyle? titlemedium,
    TextStyle? bodysmall,
  }){

    return AppTextStyles(
      headinglarge: headinglarge??this.headinglarge,
      titlemedium: titlemedium??this.titlemedium,
      bodysmall: bodysmall??this.bodysmall,

    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
      covariant ThemeExtension<AppTextStyles>? other,
      double t) {
    if(other is!AppTextStyles){
      return this;
    }
    return AppTextStyles(
        headinglarge: headinglarge,
        titlemedium: titlemedium,
        bodysmall: bodysmall
    );
  }

}