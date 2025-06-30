import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDatePicked;
  final String labelText; // New label (e.g., "Select Date")
  final bool isRequired;

  const CustomDatePicker({
    Key? key,
    required this.selectedDate,
    required this.onDatePicked,
    this.labelText = "Select Date",
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool showError = isRequired && selectedDate == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async {
            DateTime? picked = await showDatePicker(
              context: context,
              initialDate: selectedDate ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              onDatePicked(picked);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(
                color: showError ? Colors.red : Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? DateFormat('MM/dd/yyyy').format(selectedDate!)
                      : labelText,
                  style: TextStyle(
                    fontSize: 16,
                    color: selectedDate != null ? Colors.black : Colors.grey,
                  ),
                ),
                Icon(Icons.calendar_today_outlined,
                    color: Colors.indigo.shade900),
              ],
            ),
          ),
        ),
        if (showError)
          const Padding(
            padding: EdgeInsets.only(top: 4, left: 8),
            child: Text(
              "Date is required",
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
