import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';

class Image360Dialog extends StatelessWidget {
  const Image360Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.only(left: 68, right: 67, bottom: 275),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Color(0xFFFFFFFF),
      child: SizedBox(
        width: 240,
        height: 260,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(baby_img,height: 28,width: 80,),
              const SizedBox(height: 16),
              const Text(
                '360° image',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF090909),
                  height: 28 / 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'You can rotate lorem ipsum\ndolor sit amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5A5A5A),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4,
                  height: 18 / 14,
                ),
              ),
              const Spacer(),

              RoundButton(
                btnwidth: 192,
                title: "Understand",
                onTap: () {
                  Navigator.pop(context);
                },
                btnheight: 48,
                bgcolor: Color(0xFF7F67A1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
