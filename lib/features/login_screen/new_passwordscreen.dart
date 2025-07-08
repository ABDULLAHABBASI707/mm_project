import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/home_screen/home_screen.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../images/svgs/assets_path/assets_path.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final ValueNotifier<bool> togglePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> toggleConfirmPassword = ValueNotifier<bool>(true);
  final ValueNotifier<String> passwordText = ValueNotifier<String>('');
  bool hasTyped = false;

  final FormGroup form = FormGroup(
    {
      'password': FormControl<String>(validators: [Validators.required]),
      'confirm_password': FormControl<String>(
        validators: [Validators.required],
      ),
    },
    validators: [Validators.mustMatch('password', 'confirm_password')],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReactiveForm(
        formGroup: form,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              _buildLabel('New Password'),
              const SizedBox(height: 8),
              _passwordField(
                'password',
                'New Password',
                toggle: togglePassword,
                onChanged: (val) {
                  passwordText.value = val ?? '';
                  if (!hasTyped && (val?.isNotEmpty ?? false)) {
                    setState(() => hasTyped = true);
                  }
                },
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder<String>(
                valueListenable: passwordText,
                builder: (_, value, __) =>
                    Column(children: _buildRequirements(value)),
              ),
              const SizedBox(height: 32),
              _buildLabel('Repeat Password'),
              const SizedBox(height: 8),
              _passwordField(
                'confirm_password',
                'Repeat Password',
                toggle: toggleConfirmPassword,
                showError: true,
              ),
              const SizedBox(height: 32),
              GenericButton(
                text: "Confirm",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _passwordField(
    String name,
    String hint, {
    required ValueNotifier<bool> toggle,
    bool showError = false,
    void Function(String?)? onChanged,
  }) {
    return ValueListenableBuilder(
      valueListenable: toggle,
      builder: (_, _, __) {
        return ReactiveTextField<String>(
          formControlName: name,
          obscureText: toggle.value,
          onChanged: (control) => onChanged?.call(control.value),
          decoration: _inputDecoration(hint).copyWith(
            errorText: showError && form.hasErrors && form.control(name).touched
                ? 'Passwords do not match'
                : null,
          ),
        );
      },
    );
  }

  List<Widget> _buildRequirements(String value) {
    final checks = {
      'At least one letter': RegExp(r'[a-zA-Z]').hasMatch(value),
      'At least one capital letter': RegExp(r'[A-Z]').hasMatch(value),
      'At least one number': RegExp(r'\d').hasMatch(value),
      'At one special character': RegExp(
        r'[!@#\$&*~%^()\-_=+{};:,<.>?]',
      ).hasMatch(value),
      'At least 8 characters': value.length >= 8,
    };

    return checks.entries
        .map(
          (e) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _requirementItem(e.key, e.value),
          ),
        )
        .toList();
  }

  Widget _requirementItem(String text, bool isValid) {
    final neutral = !hasTyped;
    final icon = isValid ? check_icon : cross_icon;
    final color = neutral
        ? const Color(0xFF9E9E9E)
        : (isValid ? const Color(0xFF0F8A56) : const Color(0xFFDF2A4A));
    final bg = neutral
        ? const Color(0xFFE0E0E0)
        : (isValid ? const Color(0xFFE7F3EE) : const Color(0xFFFCEAED));

    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(shape: BoxShape.circle, color: bg),
          child: Center(
            child: SvgPicture.asset(icon, width: 5, height: 5, color: color),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: neutral ? const Color(0xFF3C3D3E) : color,
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) => Text(
    text,
    style: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
      height: 24 / 16,
      color: Color(0xFF212121),
    ),
  );

  InputDecoration _inputDecoration(String hint) => InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Colors.grey),
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    suffix: InkWell(
      onTap: () {
        togglePassword.value = !togglePassword.value;
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: togglePassword,
        builder: (_, value, __) =>
            Icon(value ? Icons.visibility_off_outlined : Icons.visibility),
      ),
    ),
  );
}
