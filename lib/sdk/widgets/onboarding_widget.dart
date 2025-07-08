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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 168,),
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
                SizedBox(height: 32),
                Text(
                  headingText ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 28 / 18,
                  ),
                ),
                SizedBox(height: 8,),

                Text(
                  descriptionText ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF424242),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 0.4,
                    height: 20 / 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
