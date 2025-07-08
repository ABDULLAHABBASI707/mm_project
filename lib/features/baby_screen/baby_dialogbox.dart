import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';

import 'baby_bottomsheet.dart';

class BabyDialogScreen extends StatefulWidget {
  const BabyDialogScreen({super.key});

  @override
  State<BabyDialogScreen> createState() => _BabyDialogScreenState();
}

class _BabyDialogScreenState extends State<BabyDialogScreen> {
  final TextEditingController _nameController = TextEditingController();
  DateTime? _selectedDate;
  bool _noNameYet = false;
  String? _selectedGender;
  final List<String> genders = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 163),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Color(0xFFFFFFFF),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeading(context),
                const SizedBox(height: 28),
                _buildNameField(),
                _buildNoNameCheckbox(),
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
                _buildSkinToneAndGender(),
                const SizedBox(height: 24),
                _buildActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Your baby",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 24 / 16,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close, size: 24, color: Color(0xFF616161)),
        ),
      ],
    );
  }

  Widget _buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Baby Name",
          style: TextStyle(
            color: Color(0xFF212121),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4,
            height: 24 / 16,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _nameController,
          enabled: !_noNameYet,
          decoration: InputDecoration(
            hintText: "Input field",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildNoNameCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: _noNameYet,
          activeColor: const Color(0xFF7F67A1),
          onChanged: (val) {
            setState(() {
              _noNameYet = val ?? false;
              if (_noNameYet) _nameController.clear();
            });
          },
        ),
        const Text(
          "Don't have a name yet",
          style: TextStyle(
            color: Color(0xFF16171D),
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 20 / 14,
          ),
        ),
      ],
    );
  }

  Widget _buildSkinToneAndGender() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Skin tone",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 24 / 16,
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
                style: TextStyle(
                  color: Color(0XFF212121),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 24 / 16,
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
                    hint: const Text(
                      "-- Choose --",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9E9E9E),
                        height: 24 / 16,
                        letterSpacing: 0.4,
                      ),
                    ),
                    icon: const Icon(
                      LucideIcons.chevronDown,
                      color: Color(0xFF575D75),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundButton(
            btnwidth: 100,
            btnheight: 48,
            title: "Cancel",
            onTap: () {},
            textColor: const Color(0xFF424242),
            bgcolor: const Color(0xFFFFFFFF),
            borderColor: const Color(0xFF424242),
          ),
          RoundButton(
            btnwidth: 148,
            btnheight: 48,
            title: "Save Changes",
            onTap: () {

            },
            bgcolor: const Color(0xFF7F67A1),
          ),
        ],
      ),
    );
  }
}
