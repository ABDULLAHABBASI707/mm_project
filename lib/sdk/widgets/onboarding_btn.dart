import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  GenericButton({
    super.key,
    this.color,
    this.onPressed,
    this.text,
    this.fontWeight,
  });

  Function()? onPressed;
  String? text;
  FontWeight? fontWeight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},

        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          text ?? '',
          style: TextStyle(
            color: Theme.of(context).canvasColor,
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
