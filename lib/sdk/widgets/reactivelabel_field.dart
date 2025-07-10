import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:mm_project/styles/colors/colors.dart';

class ReactiveLabeledNumberField extends StatelessWidget {
  final String formControlName;
  final String labelText;
  final String hintText;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final double width;

  const ReactiveLabeledNumberField({
    super.key,
    required this.formControlName,
    required this.labelText,
    this.hintText = '0',
    this.textAlign = TextAlign.end,
    this.textStyle,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ReactiveTextField<String>(
              formControlName: formControlName,
              keyboardType: TextInputType.number,
              textAlign: textAlign,
              style: textStyle ??
                  const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.neutral900,
                    height: 48 / 40,
                  ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          const SizedBox(width: 2),
          Text(
            labelText,
            style: theme.textTheme.displayMedium?.copyWith(
              color: CustomColors.neutral600,
              letterSpacing: 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
