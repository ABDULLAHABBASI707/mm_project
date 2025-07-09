import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../images/svgs/assets_path/assets_path.dart';
import '../../styles/colors/colors_theme_ext.dart';

class OnBoardingPageViewWidget extends StatelessWidget {
  OnBoardingPageViewWidget({
    super.key,
    required this.imageUrl,
    required this.headingText,
    required this.descriptionText,
  });

  String? imageUrl;

  String? headingText;

  String? descriptionText;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                imageUrl ?? "",
                fit: BoxFit.contain,
                height: 320,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                headingText ?? "",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 8,),

            Text(
              descriptionText ?? "",
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
