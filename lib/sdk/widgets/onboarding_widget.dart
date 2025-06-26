import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../images/svgs/assets_path/assets_path.dart';


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
    return Padding(
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
          Text(
            headingText ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              descriptionText ??
                  "",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
