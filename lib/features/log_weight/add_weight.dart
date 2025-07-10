import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_image_picker.dart';
import 'package:mm_project/styles/colors/colors.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../sdk/widgets/reactivelabel_field.dart';
import '../../styles/colors/colors_theme_ext.dart';
import 'log_added.dart';

class AddWeightBottomSheetScreen extends StatefulWidget {
  const AddWeightBottomSheetScreen({super.key});

  @override
  State<AddWeightBottomSheetScreen> createState() =>
      _AddWeightBottomSheetScreenState();
}

class _AddWeightBottomSheetScreenState
    extends State<AddWeightBottomSheetScreen> {
  File? _selectedImage;
  DateTime? _selectedDate;
  int _selectedIndex = 0;

  final FormGroup form = FormGroup({
    'weight': FormControl<String>(validators: [Validators.required]),
  });

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAddPressed() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ReactiveForm(
          formGroup: form,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediaQuery.removePadding(
                  context: context,
                  removeLeft: true,
                  removeRight: true,
                  child: const CustomAppBar(),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          "Log Weight",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: CustomColors.neutral900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ReactiveLabeledNumberField(
                              formControlName: 'weight',
                              labelText: 'lb',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Date',
                          style: theme.textTheme.displayMedium?.copyWith(
                            color: CustomColors.neutral900,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDatePicker(
                        selectedDate: _selectedDate,
                        onDatePicked: (date) {
                          setState(() {
                            _selectedDate = date;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Bump Pic',
                          style: theme.textTheme.displayMedium?.copyWith(
                            color: CustomColors.neutral900,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomImagePicker(
                        onImagePicked: (file) {
                          setState(() {
                            _selectedImage = file;
                          });
                        },
                      ),
                      if (_selectedImage != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Image.file(_selectedImage!, height: 100),
                        ),
                      const SizedBox(height: 32),
                      Center(
                        child: RoundButton(
                          title: 'Add Weight',
                          onTap: () {
                            if (form.valid) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogAddedScreen(),
                                ),
                              );
                            } else {
                              form.markAllAsTouched();
                            }
                          },
                          bgcolor: form.control('weight').valid
                              ? CustomColors.purpule600
                              : CustomColors.purpule600.withOpacity(0.1),
                          btnheight: 48,
                          btnwidth: double.infinity,
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ).padOnly(bottom: 100),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        onAddPressed: _onAddPressed,
        isAddButtonActive: true,
      ),
    );
  }
}
