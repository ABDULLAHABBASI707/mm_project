import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/features/kick_counter/kickcounter_appbar.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/styles/colors/colors.dart';

import 'kick_report.dart';

class KickCounter2 extends StatefulWidget {
  const KickCounter2({super.key});

  @override
  State<KickCounter2> createState() => _KickCounter2State();
}

class _KickCounter2State extends State<KickCounter2> {
  int kickCount = 8;
  String timeRemaining = "01:20:30";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: KickcounterAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 24,
              bottom: 90,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              "Tap the icon below when your baby kicks.\nCount 10 kicks in less than 2 hours.",
              style: theme.textTheme.displaySmall?.copyWith(
                color: CustomColors.neutral900,
                letterSpacing: 0.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const Spacer(),

          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 240,
                  height: 240,
                  child: CircularProgressIndicator(
                    value: kickCount / 24,
                    strokeWidth: 6,
                    backgroundColor: const Color(0xF3F1F5F9),
                    valueColor: const AlwaysStoppedAnimation(Color(0xFF9D86BD)),
                  ),
                ),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9D86BD),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KickReport()),
                      );
                    },
                    child: Center(
                      child: SvgPicture.asset(
                        Union,
                        height: 64,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Flexible(child: SizedBox()),

          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0F8F6),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          LucideIcons.rotateCcw,
                          size: 24,
                          color: const Color(0xFF00BFA5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Restart",
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: CustomColors.neutral800,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      "$kickCount",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Baby kicks",
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: CustomColors.neutral800,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE9E6),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          LucideIcons.circleStop,
                          color: Color(0xFFE62204),
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "End",
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: CustomColors.neutral800,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Flexible(child: SizedBox(height: 32)),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 82, right: 81, bottom: 106),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(48),
                ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(LucideIcons.clock3, size: 18, color: Colors.black54),
                  SizedBox(width: 10,),
                  Text(
                    "Time remaining: $timeRemaining",
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: CustomColors.neutral900,
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
