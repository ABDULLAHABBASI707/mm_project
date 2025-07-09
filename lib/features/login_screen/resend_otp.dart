import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import '../../sdk/widgets/button_widget.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/colors/colors_theme_ext.dart';
import 'new_passwordscreen.dart';

class ResendOtpScreen extends StatefulWidget {
  const ResendOtpScreen({super.key});

  @override
  State<ResendOtpScreen> createState() => _ResendOtpScreenState();
}

class _ResendOtpScreenState extends State<ResendOtpScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(child: SvgPicture.asset(verify_email, height: 48)),
          SizedBox(height: 24),
          Text(
            "Check your email",
            style: theme.textTheme.bodyLarge?.copyWith(
              color: CustomColors.black900,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "We've sent you an email with instructions to\nreset your password. Check your inbox and\nfollow the steps there.",
            style: theme.textTheme.displaySmall?.copyWith(
              color: CustomColors.neutral800,
              letterSpacing: 0.4,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Didn’t receive it? ",
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: CustomColors.neutral800,
                    letterSpacing: 0.4,
                  ),
                ),
                TextSpan(
                  text: "Resend",
                  style: theme.textTheme.displayLarge?.copyWith(
                    color: CustomColors.neutral800,
                    letterSpacing: 0.4,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
            child: RoundButton(
              btnwidth: double.infinity,
              title: "Return to Login",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPasswordScreen()),
                );
              },
              bgcolor: CustomColors.purple,
              btnheight: 48,
            ),
          ),
        ],
      ),
    );
  }
}
