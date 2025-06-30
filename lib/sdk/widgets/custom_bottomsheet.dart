import 'package:flutter/material.dart';

class CustomBottomSheet {
  static showInfoBottomSheet(BuildContext context, {required Widget child}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      builder: (context) => child,
    );
  }
}
