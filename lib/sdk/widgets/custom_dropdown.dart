import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';

class DropdownItem {
  final String label;
  final Color dotColor;

  DropdownItem({required this.label, required this.dotColor});
}

class CustomDropdown extends StatelessWidget {
  final DropdownItem? selectedItem;
  final List<DropdownItem> items;
  final String hintText;
  final ValueChanged<DropdownItem?> onChanged;

  const CustomDropdown({
    super.key,
    required this.selectedItem,
    required this.items,
    required this.hintText,
    required this.onChanged,
    required TextStyle textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,

      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: selectedItem == null
              ? CustomColors.neutral300
              : CustomColors.purpule600,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<DropdownItem>(
          value: selectedItem,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down),
          hint: Text(hintText, style: const TextStyle(color: Colors.grey)),
          items: items.map((DropdownItem item) {
            return DropdownMenuItem<DropdownItem>(
              value: item,
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: item.dotColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(item.label),
                ],
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
