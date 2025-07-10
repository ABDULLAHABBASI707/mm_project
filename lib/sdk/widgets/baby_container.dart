import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../features/home_screen/mygoal_screen.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/colors/colors_theme_ext.dart';
import '../../styles/layouts/sizes.dart';

class BabyContainer extends StatelessWidget {
  const BabyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Positioned(
      left: 16,
      right: 16,
      top: 320,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.s16,
          vertical: Sizes.s12,
        ),
        height: 76,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(Sizes.s16),
          boxShadow: [
            BoxShadow(
              color: CustomColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "MY BABY",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: CustomColors.neutral700,
                    )
                ),
                const SizedBox(height: 4),
                Text(
                  "Elizabeth",
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
            const Spacer(),
            Container(

              height: Sizes.s32,
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.s12,
              ),
              decoration: BoxDecoration(
                color: CustomColors.purpule50,
                borderRadius: BorderRadius.circular(Sizes.s40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MygoalScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "More Detail",
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: CustomColors.purpule600,
                      ),
                    ),
                  ),
                  const SizedBox(width: Sizes.s6),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Sizes.s14,
                    color: CustomColors.purpule600,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
