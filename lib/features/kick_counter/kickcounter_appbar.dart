import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class KickcounterAppbar extends StatelessWidget implements PreferredSizeWidget {
  const KickcounterAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // 56.0 by default

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close, color: Color(0xFF616161)),
      ),
      title: const Text(
        "Kick Counter",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 19),
          child: Icon(LucideIcons.history, color: Color(0xFF616161)),
        ),
      ],
    );
  }
}
