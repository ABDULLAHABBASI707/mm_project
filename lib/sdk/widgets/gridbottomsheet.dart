import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mm_project/features/log_weight/add_weight.dart';
import '../../images/svgs/assets_path/assets_path.dart';
import '../../styles/colors/colors_custom.dart';

Widget gridBottomSheet({
   required BuildContext context,
}) {
  List<GridModel> list = [
    GridModel(
      iconPath: add_weight,
      text: "Add Weight",
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddWeightBottomSheetScreen()));
      },
    ),
    GridModel(
      iconPath: add_activity,
      text: "Add Activity",
      onTap: () {
        Navigator.pushNamed(context, '/addActivity');
      },
    ),
    GridModel(
      iconPath: add_weight,
      text: "Contraction",
      onTap: () {
        Navigator.pushNamed(context, '/contraction');
      },
    ),
    GridModel(
      iconPath: kicks_counter,
      text: "Kicks Counter",
      onTap: () {
        Navigator.pushNamed(context, '/kicksCounter');
      },
    ),
  ];

  return Container(

    padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 24),
    decoration: const BoxDecoration(
      color: CustomColors.neutral100,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      ),
    ),
    child: GridView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
     //   childAspectRatio: 112/166,
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: list[index].onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: CustomColors.white,
                  child: SvgPicture.asset(
                    list[index].iconPath ?? "",
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  list[index].text ?? "",
                  style: const TextStyle(fontSize: 16),
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
