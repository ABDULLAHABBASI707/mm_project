import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../styles/colors/colors_theme_ext.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Container(
      height: 358,
      decoration: BoxDecoration(color: CustomColors.purpule),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi,Angel",
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: CustomColors.neutral900,
                ),
              ),
              badges.Badge(
                badgeStyle: badges.BadgeStyle(badgeColor: CustomColors.ember),
                badgeContent: Text(
                  '12',
                  style: TextStyle(
                    color: CustomColors.white,
                    fontSize: FontSize.f10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: Icon(LucideIcons.bell, size: 26),
              ),
            ],
          ).padOnly(left: Sizes.s16, top: Sizes.s64, right: Sizes.s80),
        ],
      ),
    );
  }
}
