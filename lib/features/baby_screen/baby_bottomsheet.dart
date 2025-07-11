import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/styles/colors/colors.dart';

class BabyShareBottomSheet extends StatelessWidget {
  final String babyName;
  final String age;
  final String weight;
  final String size;
  final String ageUnit;
  final String weightUnit;
  final String sizeUnit;

  const BabyShareBottomSheet({
    Key? key,
    required this.babyName,
    required this.age,
    required this.weight,
    required this.size,
    this.ageUnit = 'weeks',
    this.weightUnit = 'lb',
    this.sizeUnit = 'inches',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.neutral,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: 4,
              width: 32,
              decoration: BoxDecoration(
                color: CustomColors.neutral300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Share your baby',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: CustomColors.neutral900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildBabyCard(),
                  const SizedBox(height: 24),
                  Text(
                    "Elizabeth Greaux",
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: CustomColors.neutral900,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      infoColumn(
                        context,
                        "Age",
                        "36",
                        ageUnit,
                        LucideIcons.calendar,
                      ),
                      infoColumn(
                        context,
                        "Weight",
                        "4-6",
                        weightUnit,
                        LucideIcons.weight,
                      ),
                      infoColumn(
                        context,
                        "Size",
                        "16-18",
                        sizeUnit,
                        LucideIcons.ruler,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    color: Color(0xFFE0E0E0),
                    thickness: 1,
                    height: 1,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                      left: 20,
                      right: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildShareOption(
                          context,
                          "Copy Link",
                          Icon(
                            LucideIcons.link,
                            size: 24,
                            color: CustomColors.neutral900,
                          ),
                          () {},
                        ),
                        _buildShareOption(
                          context,
                          "Facebook",
                          SvgPicture.asset(facebook, height: 24),
                          () {},
                        ),
                        _buildShareOption(
                          context,
                          "SMS",
                          Icon(
                            LucideIcons.messageCircle,
                            size: 24,
                            color: CustomColors.neutral900,
                          ),
                          () {},
                        ),
                        _buildShareOption(
                          context,
                          "Email",
                          const Icon(
                            LucideIcons.mail,
                            size: 24,
                            color: CustomColors.neutral900,
                          ),
                          () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 5,
            //   width: 139,
            //   decoration: BoxDecoration(
            //     color: const Color(0XFF090909),
            //     borderRadius: BorderRadius.circular(100),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildBabyCard() {
    return Container(
      height: 335,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE1C7F0), Color(0xFFF5E6FF)],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(children: []),
    );
  }

  Widget infoColumn(
    BuildContext context,
    String title,
    String value,
    String unit,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: CustomColors.neutral700),
            const SizedBox(width: 8),
            Text(
              title,
              style: theme.textTheme.displaySmall?.copyWith(
                color: CustomColors.neutral900,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text.rich(
          TextSpan(
            text: '$value ',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: CustomColors.neutral900,
            ),
            children: [
              TextSpan(
                text: unit,
                style: theme.textTheme.displaySmall?.copyWith(
                  color: CustomColors.neutral900,
                  letterSpacing: 0.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShareOption(
    BuildContext context,
    String label,
    Widget iconWidget,
    VoidCallback onTap,
  ) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: CustomColors.neutral100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: iconWidget,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: theme.textTheme.displaySmall?.copyWith(
              color: CustomColors.neutral900,
              letterSpacing: 0.4,
            ),
          ),
        ],
      ),
    );
  }

  static void show(
    BuildContext context, {
    required String babyName,
    required String age,
    required String weight,
    required String size,
    String ageUnit = 'weeks',
    String weightUnit = 'lb',
    String sizeUnit = 'inches',
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => BabyShareBottomSheet(
        babyName: babyName,
        age: age,
        weight: weight,
        size: size,
        ageUnit: ageUnit,
        weightUnit: weightUnit,
        sizeUnit: sizeUnit,
      ),
    );
  }
}
