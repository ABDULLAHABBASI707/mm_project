import 'package:flutter/cupertino.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
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
    return Container(
      height: 358,
      decoration: BoxDecoration(color: CustomColors.purpule),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                LucideIcons.arrowLeft,
                size: 24,
                color: Color(0xFF616161),
              ),
              const Text(
                "Baby Details",
                style: TextStyle(
                  color: Color(0xFF090909),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 24 / 16,
                ),
              ),
              const Icon(LucideIcons.share, size: 24, color: Color(0xFF616161)),
            ],
          ).padOnly(left: Sizes.s16, top: Sizes.s64, right: Sizes.s20),
        ],
      ),
    );
  }
}
