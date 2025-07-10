import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/log_weight/add_weight.dart';
import 'package:mm_project/features/kick_counter/kickcounter_homescreen.dart';
import 'package:mm_project/features/log_activity/log_activity.dart';
import '../../images/svgs/assets_path/assets_path.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/colors/colors_theme_ext.dart';

Widget gridBottomSheet({required BuildContext context}) {
  final colors = Theme.of(context).extension<AppColors>();
  final theme = Theme.of(context);
  List<GridModel> list = [
    GridModel(
      iconPath: add_weight,
      text: "Add Weight",
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => AddWeightBottomSheetScreen()),
      ),
    ),
    GridModel(
      iconPath: add_activity,
      text: "Add Activity",
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => LogActivityScreen()),
      ),
    ),
    GridModel(iconPath: add_weight, text: "Contraction", onTap: () {}),
    GridModel(
      iconPath: kicks_counter,
      text: "Kicks Counter",
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => KickcounterHomescreen()),
      ),
    ),
  ];

  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: CustomColors.neutral100,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
    ),
    child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (_, index) {
        final item = list[index];
        return InkWell(
          onTap: item.onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28,
                  child: SvgPicture.asset(
                    item.iconPath ?? "",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  item.text ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

class GridModel {
  final String? iconPath;
  final String? text;
  final VoidCallback? onTap;

  GridModel({this.iconPath, this.text, this.onTap});
}
