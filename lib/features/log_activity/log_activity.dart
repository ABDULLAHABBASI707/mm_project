import 'dart:io';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_dropdown.dart';
import 'package:mm_project/styles/colors/colors.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../sdk/widgets/reactivelabel_field.dart';
import '../log_weight/log_added.dart';

class LogActivityScreen extends StatefulWidget {
  const LogActivityScreen({super.key});

  @override
  State<LogActivityScreen> createState() => _LogActivityScreenState();
}

class _LogActivityScreenState extends State<LogActivityScreen> {
  final form = FormGroup({
    'weight': FormControl<String>(validators: [Validators.required]),
  });

  DateTime? _selectedDate;
  int _selectedIndex = 0;
  DropdownItem? _selectedActivity;

  final List<DropdownItem> _activities = [
    DropdownItem(label: 'Cardio', dotColor: Color(0xFFFF6727)),
    DropdownItem(label: 'Yoga', dotColor: Color(0xFF00B84A)),
    DropdownItem(label: 'Strength', dotColor: Color(0xFF8063FF)),
    DropdownItem(label: 'Meditation', dotColor: Color(0xFF00A8E1)),
  ];

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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
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
                child: ReactiveForm(
                  formGroup: form,
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
                          "Log Activity",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: CustomColors.neutral900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ReactiveLabeledNumberField(
                              formControlName: 'weight',
                              labelText: 'min',
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
                          'Type of activity',
                          style: theme.textTheme.displayMedium?.copyWith(
                            color: CustomColors.neutral900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDropdown(
                        selectedItem: _selectedActivity,
                        items: _activities,
                        hintText: '-- Choose --',
                        textStyle: theme.textTheme.displayMedium!.copyWith(
                          color: CustomColors.neutral500,
                          letterSpacing: 0.4,
                        ),

                        onChanged: (value) {
                          setState(() {
                            _selectedActivity = value;
                          });
                        },
                      ),

                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Date',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
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
                      const SizedBox(height: 28),
                      Center(
                        child: ReactiveFormConsumer(
                          builder: (context, form, child) {
                            return RoundButton(
                              title: 'Add Log',
                              onTap: () {
                                if (form.valid) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const LogAddedScreen(),
                                    ),
                                  );
                                }
                              },
                              bgcolor: form.valid
                                  ? CustomColors.purpule600
                                  : CustomColors.purpule600.withOpacity(0.1),
                              btnheight: 48,
                              btnwidth: double.infinity,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
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
