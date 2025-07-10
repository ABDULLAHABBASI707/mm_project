import 'package:flutter/material.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/layouts/sizes.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, this.buttonText});
  String? buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: Sizes.s20, vertical: Sizes.s10),
        backgroundColor: CustomColors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: CustomColors.purpule600,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          letterSpacing: 0.5
        ),
      ),
    );
  }
}
