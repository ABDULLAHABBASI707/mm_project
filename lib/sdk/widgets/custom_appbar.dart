import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 358,
      decoration: BoxDecoration(
          color: CustomColors.purpule
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi,Angel",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: FontSize.f24,
                ),
              ),
              badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: CustomColors.ember,
                ),
                badgeContent: Text(
                  '12',
                  style: TextStyle(
                    color: CustomColors.white,
                    fontSize: FontSize.f10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: Icon(Icons.notifications_none, size: 26),
              ),
            ],
          ).padOnly(
            left: Sizes.s16,
            top: Sizes.s64,
            right: Sizes.s80,
          ),
        ],
      ),
    );
  }
}
