import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/login_screen/password_recovery.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../sdk/widgets/onboarding_btn.dart';
import '../baby_screen/baby_details.dart';

class LoginScreen extends StatelessWidget {
  final FormGroup form = FormGroup({
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      validators: [Validators.required, Validators.minLength(6)],
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReactiveForm(
        formGroup: form,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Icon(Icons.arrow_back, color: Color(0xFF616161)),
                    Spacer(),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 24 / 16,
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
                const SizedBox(height: 32),
                _buildLabel("Email"),
                SizedBox(height: 8),
                ReactiveTextField<String>(
                  formControlName: 'email',
                  decoration: _inputDecoration("Input field"),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 24),
                _buildLabel("Password"),
                SizedBox(height: 8),
                ReactiveTextField<String>(
                  formControlName: 'password',
                  obscureText: true,
                  decoration: _inputDecoration("• • • • • • •"),
                ),
                const SizedBox(height: 32),
                RoundButton(
                  btnwidth: double.infinity,
                  title: "Login",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BabyDetailsScreen(),
                      ),
                    );
                  },
                  bgcolor: Color(0xFF7F67A1),
                  btnheight: 48,
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordRecovery(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Color(0xFF7F67A1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      height: 24 / 14,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                _buildDividerWithOr(),
                const SizedBox(height: 32),
                _buildSocialButton(
                  "Continue with Google",
                  "assets/svgs/goggle_logo.svg",
                ),
                const SizedBox(height: 12),
                _buildSocialButton(
                  "Continue with Facebook",
                  "assets/svgs/fb_logo.svg",
                ),
                const SizedBox(height: 32),
                const Text(
                  "We will never share your data",
                  style: TextStyle(
                    color: Color(0xFF616161),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 16 / 12,
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 24 / 16,
          letterSpacing: 0.4,
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: Color(0xFF9E9E9E),
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.4,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  Widget _buildDividerWithOr() {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFE0E0E0))),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "or",
            style: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4,
              height: 20 / 14,
            ),
          ),
        ),
        const Expanded(child: Divider(color: Color(0xFFE0E0E0))),
      ],
    );
  }

  Widget _buildSocialButton(String label, String iconPath) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SvgPicture.asset(iconPath, height: 20),
      ),

      label: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            color: CustomColors.black900,
          ),
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        side: const BorderSide(color: Colors.grey),
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
