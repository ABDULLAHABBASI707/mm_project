import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';

class KickcounterAppbar extends StatelessWidget implements PreferredSizeWidget {
  const KickcounterAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close, color: CustomColors.neutral700),
      ),
      title: Text(
        "Kick Counter",
        style: theme.textTheme.bodyMedium?.copyWith(
          color: CustomColors.neutral900,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 19),
          child: Icon(LucideIcons.history, color: CustomColors.neutral700),
        ),
      ],
    );
  }
}
