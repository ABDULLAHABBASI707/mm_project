import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/styles/colors/colors_custom.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BabyDialogScreen extends StatefulWidget {
  const BabyDialogScreen({super.key});

  @override
  State<BabyDialogScreen> createState() => _BabyDialogScreenState();
}

class _BabyDialogScreenState extends State<BabyDialogScreen> {
  final FormGroup form = FormGroup({
    'babyName': FormControl<String>(validators: [Validators.required]),
  });

  DateTime? _selectedDate;
  bool _noNameYet = false;
  String? _selectedGender;
  final List<String> genders = ['Male', 'Female', 'Other'];

  @override
  void initState() {
    super.initState();
    if (_noNameYet) form.control('babyName').markAsDisabled();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 163),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: CustomColors.neutral,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeading(context),
                  const SizedBox(height: 28),
                  _buildNameField(context),
                  _buildNoNameCheckbox(context),
                  const SizedBox(height: 24),
                  const Text(
                    "Due Date",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 24 / 16,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomDatePicker(
                    selectedDate: _selectedDate,
                    onDatePicked: (date) {
                      setState(() => _selectedDate = date);
                    },
                    labelText: "03/12/2025",
                  ),
                  const SizedBox(height: 24),
                  _buildSkinToneAndGender(context),
                  const SizedBox(height: 24),
                  _buildActionButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeading(BuildContext context) {
    final theme=Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          "Your baby",
          style: theme.textTheme.titleSmall?.copyWith(
            color: CustomColors.neutral900,
          )
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child:  Icon(Icons.close, size: 24, color: CustomColors.neutral700,),
        ),
      ],
    );
  }

  Widget _buildNameField(BuildContext context) {
    final theme=Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Baby Name",
          style: theme.textTheme.displayMedium?.copyWith(
            color: CustomColors.neutral900,
            letterSpacing: 0.4,
          ),
        ),
        const SizedBox(height: 8),
        ReactiveTextField<String>(
          formControlName: 'babyName',
          decoration: InputDecoration(
            hintText: "Input field",
            hintStyle:theme.textTheme.displayMedium?.copyWith(
              color: CustomColors.neutral500,
            ) ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildNoNameCheckbox(BuildContext context) {
    final theme=Theme.of(context);
    return Row(
      children: [
        Checkbox(
          value: _noNameYet,
          activeColor:CustomColors.purpule600,
          onChanged: (val) {
            setState(() {
              _noNameYet = val ?? false;
              if (_noNameYet) {
                form.control('babyName').reset();
                form.control('babyName').markAsDisabled();
              } else {
                form.control('babyName').markAsEnabled();
              }
            });
          },
        ),
         Text(
          "Don't have a name yet",
          style:theme.textTheme.displaySmall?.copyWith(
            color: CustomColors.neutral900,
          ),
        ),
      ],
    );
  }

  Widget _buildSkinToneAndGender(BuildContext context) {
    final theme=Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Skin tone",
                style: theme.textTheme.displayMedium?.copyWith(
                  color: CustomColors.neutral900,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFD7B1A0),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 28),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Gender",
                style: theme.textTheme.displayMedium?.copyWith(
                  color: CustomColors.neutral900,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedGender,
                    hint:  Text(
                      "-- Choose --",
                      style: theme.textTheme.displayMedium?.copyWith(
                        color: CustomColors.neutral500,
                        letterSpacing: 0.4,
                      ),
                    ),
                    icon:  Icon(
                      LucideIcons.chevronDown,
                      color: CustomColors.neutral500,
                      size: 16,
                    ),
                    isExpanded: true,
                    items: genders.map((String value) {
                      return DropdownMenuItem(value: value, child: Text(value));
                    }).toList(),
                    onChanged: (value) {
                      setState(() => _selectedGender = value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 59, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundButton(
            btnwidth: 100,
            btnheight: 48,
            title: "Cancel",
            onTap: () => Navigator.pop(context),
            textColor: const Color(0xFF424242),
            bgcolor: const Color(0xFFFFFFFF),
            borderColor: const Color(0xFF424242),
          ),
          SizedBox(width: 16,),
          RoundButton(
            btnwidth: 148,
            btnheight: 48,
            title: "Save Changes",
            onTap: () => Navigator.pop(context),
            bgcolor: const Color(0xFF7F67A1),
          ),
        ],
      ),
    );
  }
}
