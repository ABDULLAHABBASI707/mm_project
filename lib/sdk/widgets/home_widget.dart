import 'package:flutter/material.dart';
import '../../styles/colors/colors_custom.dart';
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
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.s12)),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 22.5,top: 20,bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading ?? "",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize:FontSize.f18),
                  ),
                  SizedBox(height: Sizes.s8),
                  Text(
                    description ?? "",
                    softWrap: true,
                    style: TextStyle(
                      color: CustomColors.neutral700,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 0.4,

                    ),
                  ),


                  SizedBox(height: Sizes.s12),
                  ButtonWidget(buttonText: buttonText),
                ],

              ),

            ),
            Column(
              children: [
                Image.asset(iconPath??"",height:80 ,width: 80,),
              ],
            )

          ],
        ),
      ),
    );
  }
}