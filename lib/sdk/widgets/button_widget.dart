import 'package:flutter/material.dart';

import '../../styles/colors/colors_theme_ext.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color bgcolor;
  final double btnheight;
  final double btnwidth;
  final Color? textColor;
  final Color? borderColor;

  const RoundButton({
    super.key,
    required this.btnwidth,
    required this.title,
    required this.onTap,
    required this.bgcolor,
    required this.btnheight,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Container(
        width: btnwidth,
        height: btnheight,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(40),
          border: borderColor != null
              ? Border.all(color: borderColor!)
              : null,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 0.5,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
