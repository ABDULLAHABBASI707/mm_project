import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDatePicked;
  final String labelText;
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
    final theme = Theme.of(context);
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
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(color: CustomColors.neutral300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDate != null
                        ? DateFormat('MM/dd/yyyy').format(selectedDate!)
                        : labelText,
                    style: theme.textTheme.displayMedium?.copyWith(
                      color: CustomColors.neutral900,
                      letterSpacing: 0.4,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: CustomColors.neutral100,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      LucideIcons.calendar,
                      color: CustomColors.neutral600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // if (showError)
        //   const Padding(
        //     padding: EdgeInsets.only(top: 4, left: 8),
        //     child: Text(
        //       "Date is required",
        //       style: TextStyle(color: Colors.red, fontSize: 12),
        //     ),
        //   ),
      ],
    );
  }
}
