import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/styles/colors/colors.dart';

class Image360Dialog extends StatelessWidget {
  const Image360Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
      insetPadding: const EdgeInsets.only(left: 68, right: 67, bottom: 275),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: CustomColors.neutral,
      child: SizedBox(
        width: 240,
        height: 260,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(baby_img, height: 28, width: 80),
              const SizedBox(height: 16),
              Text(
                '360° image',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: CustomColors.neutral900,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'You can rotate lorem ipsum\ndolor sit amet',
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall?.copyWith(
                  color: CustomColors.neutral800,
                  letterSpacing: 0.4,
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: RoundButton(
                  btnwidth: double.infinity,
                  title: "Understand",
                  onTap: () {
                    Navigator.pop(context);
                  },
                  btnheight: 48,
                  bgcolor: CustomColors.purpule600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
