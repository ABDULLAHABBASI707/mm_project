import 'package:flutter/material.dart';
import 'package:mm_project/features/kick_counter/kick_counter.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_dropdown.dart';
import 'package:mm_project/styles/colors/colors.dart';

final TextEditingController _kickController = TextEditingController();
DateTime? _startDate;
DateTime? _endDate;
DropdownItem? _selectedNote;

final List<DropdownItem> _notes = [
  DropdownItem(label: 'After lunch', dotColor: Colors.white, ),
  // DropdownItem(label: 'Yoga', dotColor: Color(0xFF00B84A)),
  // DropdownItem(label: 'Strength', dotColor: Color(0xFF8063FF)),
  // DropdownItem(label: 'Meditation', dotColor: Color(0xFF00A8E1)),
];

void showKickCounterBottomSheet(BuildContext context) {
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
            return Container(
              width: double.infinity,
              height: 590,
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
                    const Text(
                      "Kick Counter",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextField(
                            controller: _kickController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '0',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'kicks',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
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
                      onChanged: (value) => setState(() => _selectedNote = value),
                    ),

                    const SizedBox(height: 28),
                    RoundButton(
                      title: 'Add Weight',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const KickCounter2(),
                          ),
                        );
                      },
                      bgcolor: CustomColors.purpule600,
                      btnheight: 48,
                      btnwidth: double.infinity,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
