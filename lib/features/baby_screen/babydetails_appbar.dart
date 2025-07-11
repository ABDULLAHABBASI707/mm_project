import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/features/baby_screen/360_dialog.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/layouts/sizes.dart';


class BabyDetailAppbar extends StatefulWidget {
  const BabyDetailAppbar({super.key});

  @override
  State<BabyDetailAppbar> createState() => _BabyDetailAppbarState();
}

class _BabyDetailAppbarState extends State<BabyDetailAppbar> {
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Container(
      height: 358,
      decoration: BoxDecoration(color: CustomColors.purpule),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Icon(
                LucideIcons.arrowLeft,
                size: 24,
                color: CustomColors.neutral700,
              ),
               Text(
                "Baby Details",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: CustomColors.neutral900,
                ),
              ),
              InkWell(
                child:  Icon(
                  LucideIcons.share,
                  size: 24,
                  color: CustomColors.neutral700,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const Image360Dialog(),
                  );
                },
              ),
            ],
          ).padOnly(left: Sizes.s16, top: Sizes.s64, right: Sizes.s20),
        ],
      ),
    );
  }
}
