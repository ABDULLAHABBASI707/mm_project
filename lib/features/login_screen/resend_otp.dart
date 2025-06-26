import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import '../../styles/colors/colors_custom.dart';
import 'new_passwordscreen.dart';

class ResendOtpScreen extends StatefulWidget {
  const ResendOtpScreen({super.key});

  @override
  State<ResendOtpScreen> createState() => _ResendOtpScreenState();
}

class _ResendOtpScreenState extends State<ResendOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Column(
        children: [
          Column(
            children: [
              Center(child: SvgPicture.asset(verify_email, height: 80)),
              SizedBox(height: 24),
              Text(
                "Check your email",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: CustomColors.black900,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We've sent you an email with instructions to\nreset your password. Check your inbox and\nfollow the steps there.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.4,
                  color: Color(0xFF424242),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32,),
              Text("Didn’t received it? Resend",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20/14,
                  letterSpacing: 0.4,
                  color: Color(0xFF424242),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24,top: 32),
                child: GenericButton(text: "Return to Login",onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPasswordScreen()));
                },),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
