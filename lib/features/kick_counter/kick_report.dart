import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/styles/colors/colors.dart';

class KickReport extends StatefulWidget {
  const KickReport({super.key});

  @override
  State<KickReport> createState() => _KickReportState();
}

class _KickReportState extends State<KickReport> {
  @override
  Widget build(BuildContext context) {
    final theme = TextTheme.of(context);
    return Scaffold(
      backgroundColor: CustomColors.neutral100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: SvgPicture.asset(union, height: 80),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Great job!",
                    style: theme.bodyMedium?.copyWith(
                      color: CustomColors.neutral900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Your baby lorem ipsum dolor sit amet",
                      textAlign: TextAlign.center,
                      style: theme.displaySmall?.copyWith(
                        color: CustomColors.neutral800,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 32),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    "10 kicks",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: CustomColors.neutral900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Your baby kicking for 2 hours",
                    style: theme.displaySmall?.copyWith(
                      color: CustomColors.neutral800,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 32),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _timeBox(context, "03/12/2025", "8:30AM"),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      _timeBox(context, "03/12/2025", "9:30AM"),
                    ],
                  ),

                  const SizedBox(height: 40),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        "What does 10 kicks mean?",
                        style: theme.bodyMedium?.copyWith(
                          color: CustomColors.neutral900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Angelina, your habits may be holding you back\nbut you're not alone. Many people have below\naverage scores. The good news is, simple\nchanges to your diet and habits could boost your\n score by 20 points or more. Let's do this!",
                    style: theme.displaySmall?.copyWith(
                      color: CustomColors.neutral800,
                      letterSpacing: 0.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),

            const SizedBox(height: 55),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RoundButton(
                btnwidth: double.infinity,
                btnheight: 48,
                title: 'Got it',
                onTap: () {
                  Navigator.pop(context);
                },
                bgcolor: CustomColors.purpule600,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _timeBox(BuildContext context, String date, String time) {
    final theme = Theme.of(context);
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: theme.textTheme.displaySmall?.copyWith(letterSpacing: 0.4),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: theme.textTheme.displaySmall?.copyWith(letterSpacing: 0.4),
          ),
        ],
      ),
    );
  }
}
