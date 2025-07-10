import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';

class CustomImagePicker extends StatelessWidget {
  final Function(File) onImagePicked;

  const CustomImagePicker({Key? key, required this.onImagePicked})
    : super(key: key);

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      onImagePicked(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => _pickImage(context),
      child: Container(
        height: 48,
        width: double.infinity,
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
                "Camera or upload",
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
                  LucideIcons.paperclip,
                  color: CustomColors.neutral600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
