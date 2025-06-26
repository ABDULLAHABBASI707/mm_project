import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/login_screen/verify_screen.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../styles/colors/colors_custom.dart';

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
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
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
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: CustomColors.black900,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "  Enter email address or username associated\nwith your Bumpcoach account",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 20 / 14,
                    letterSpacing: 0.4,
                    color: Color(0xFF424242),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                  child: Column(
                    children: [
                      _buildLabel('Email'),
                      SizedBox(height: 8),
                      ReactiveTextField<String>(
                        formControlName: 'email',
                        decoration: _inputDecoration("Input field"),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 32),
                      GenericButton(text: "Continue",
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyEmailScreen()));
                        },),
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

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.4,
          height: 24 / 16,
          color: CustomColors.black900,
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
