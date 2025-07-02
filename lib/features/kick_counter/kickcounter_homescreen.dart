import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/styles/colors/colors.dart';

import 'kickcounter_appbar.dart';
import 'kickcounter_bottomsheet.dart';

class KickcounterHomescreen extends StatelessWidget {
  const KickcounterHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
       appBar: KickcounterAppbar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF00B5A6), width: 1),
              ),
              child: Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 28),
                decoration: const BoxDecoration(
                  color: Color(0xFF00B5A6),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "Start",
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.neutral100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset(union),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Add Manually",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: CustomColors.neutral900,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Forgot to start? now you can input manually lorem ipsum.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF616161),
                          ),
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: () => showKickCounterBottomSheet(context),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: CustomColors.purpule600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text(
                            'Add Manual',
                            style: TextStyle(
                              color: CustomColors.purpule600,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
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
