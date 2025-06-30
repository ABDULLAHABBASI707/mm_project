import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color bgcolor;
  final double btnheight;
  final double btnwidth;

  const RoundButton({
    super.key,
    required this.btnwidth,
    required this.title,
    required this.onTap,
    required this.bgcolor,
    required this.btnheight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: btnwidth,
        height: btnheight,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child:  Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 0.5,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
