import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/login_screen/verify_screen.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../styles/colors/colors_custom.dart';
import '../../styles/colors/colors_theme_ext.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final FormGroup form = FormGroup({
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
  });
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
      body: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            Column(
              children: [
                Center(child: SvgPicture.asset(password, height: 80)),
                SizedBox(height: 24),
                Text(
                  "Password recovery",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: CustomColors.black900,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "  Enter email address or username associated\nwith your Bumpcoach account",
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: CustomColors.neutral800,
                    letterSpacing: 0.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                  child: Column(
                    children: [
                      _buildLabel(text: 'Email'),
                      SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: ReactiveTextField<String>(
                          formControlName: 'email',
                          decoration: _inputDecoration("Input field"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(height: 32),
                      RoundButton(
                        btnwidth: double.infinity,
                        title: "Continue",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyEmailScreen(),
                            ),
                          );
                        },
                        bgcolor: CustomColors.purple,
                        btnheight: 48,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _buildLabel extends StatelessWidget {
  final String text;
  const _buildLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: theme.textTheme.displayMedium?.copyWith(
          color: CustomColors.neutral900,
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Color(0XFF9E9E9E)),
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
  );
}
