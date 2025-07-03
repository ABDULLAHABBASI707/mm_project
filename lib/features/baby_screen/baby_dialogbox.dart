import 'package:flutter/material.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';

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
        child: Container(
          height: 488,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeading(context),
              const SizedBox(height: 16),
              _buildNameField(),
              _buildNoNameCheckbox(),
              const SizedBox(height: 4),
              const Text("Due Date"),
              const SizedBox(height: 6),
              CustomDatePicker(
                selectedDate: _selectedDate,
                onDatePicked: (date) {
                  setState(() => _selectedDate = date);
                },
                labelText: "03/12/2025",
              ),
              const SizedBox(height: 12),
              _buildSkinToneAndGender(),
              const Spacer(),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  /// Heading
  Widget _buildHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Your baby",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close, size: 20),
        ),
      ],
    );
  }

  /// Baby Name TextField
  Widget _buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Baby Name"),
        const SizedBox(height: 6),
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
        const SizedBox(height: 8),
      ],
    );
  }

  ///  Name Checkbox
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
        const Text("Don't have a name yet"),
      ],
    );
  }

  /// Skin Tone and Gender
  Widget _buildSkinToneAndGender() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Skin tone"),
              const SizedBox(height: 6),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE6C7BC),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Gender"),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedGender,
                    hint: const Text("-- Choose --"),
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

  /// Bottom Buttons
  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 59,right:20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundButton(
            btnwidth: 100,
            title: "Cancel",
            onTap: () {},
            textColor: const Color(0xFF424242),
            bgcolor: const Color(0xFFFFFFFF),
            borderColor: const Color(0xFF424242),
            btnheight: 48,
          ),

          RoundButton(
            btnwidth: 148,
            title: "Save Changes",
            onTap: () {},
            bgcolor: const Color(0xFF7F67A1),
            btnheight: 48,
          ),
        ],
      ),
    );
  }
}
