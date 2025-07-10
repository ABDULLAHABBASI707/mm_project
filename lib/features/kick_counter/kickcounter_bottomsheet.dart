import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:mm_project/features/kick_counter/kick_counter.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_dropdown.dart';
import 'package:mm_project/styles/colors/colors.dart';

import '../../sdk/widgets/reactivelabel_field.dart';


DateTime? _startDate;
DateTime? _endDate;
DropdownItem? _selectedNote;

final List<DropdownItem> _notes = [
  DropdownItem(label: 'After lunch', dotColor: Colors.white),
];

void showKickCounterBottomSheet(BuildContext context) {
  final theme=Theme.of(context);
  final form = FormGroup({
    'kick': FormControl<String>(validators: [Validators.required]),
  });

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: StatefulBuilder(
          builder: (context, setState) {
            return ReactiveForm(
              formGroup: form,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: 16),
                       Text(
                        "Kick Counter",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: CustomColors.neutral900,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ReactiveLabeledNumberField(
                            formControlName: 'kick',
                            labelText: 'kicks',
                          ),

                        ],
                      ),
                      const SizedBox(height: 8),
                      const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
                      const SizedBox(height: 14),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDatePicker(
                        labelText: 'Start time',
                        selectedDate: _startDate,
                        onDatePicked: (date) => setState(() => _startDate = date),
                      ),
                      const SizedBox(height: 24),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'End',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDatePicker(
                        labelText: 'End time',
                        selectedDate: _endDate,
                        onDatePicked: (date) => setState(() => _endDate = date),
                      ),
                      const SizedBox(height: 24),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Notes',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDropdown(
                        selectedItem: _selectedNote,
                        items: _notes,
                        hintText: '-- Choose --',
                        textStyle: const TextStyle(fontSize: 14),
                        onChanged: (value) => setState(() => _selectedNote = value),
                      ),

                      const SizedBox(height: 28),
                      ReactiveFormConsumer(
                        builder: (context, formGroup, _) {
                          return RoundButton(
                            title: 'Add Weight',
                            onTap: () {
                              if (formGroup.valid) {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const KickCounter2(),
                                  ),
                                );
                              }
                            },
                            bgcolor: formGroup.valid
                                ? CustomColors.purpule600
                                : CustomColors.purpule600.withOpacity(0.1),
                            btnheight: 48,
                            btnwidth: double.infinity,
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
