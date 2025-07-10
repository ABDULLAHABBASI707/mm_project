import 'package:flutter/material.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/colors/colors_theme_ext.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'btn_widget.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key,
    required this.heading,
    required this.description,
    required this.buttonText,
    required this.iconPath,
  });
  String? heading;
  String? description;
  String buttonText;
  String? iconPath;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.s12),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 22.5, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading ?? "",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: CustomColors.neutral900,
                    ),
                  ),
                  SizedBox(height: Sizes.s8),
                  Text(
                    description ?? "",
                    softWrap: true,
                    style: theme.textTheme.displaySmall?.copyWith(
                      letterSpacing: 0.4,
                      color: CustomColors.neutral800,

                    ),
                  ),

                  SizedBox(height: Sizes.s12),
                  ButtonWidget(buttonText: buttonText,),
                ],
              ),
            ),
            Column(
              children: [Image.asset(iconPath ?? "", height: 80, width: 80)],
            ),
          ],
        ),
      ),
    );
  }
}
