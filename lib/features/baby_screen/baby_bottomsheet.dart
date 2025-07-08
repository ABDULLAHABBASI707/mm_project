import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
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
                color: Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Share your baby',
                      style: TextStyle(
                        fontSize: 18,
                        height: 28 / 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF090909),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildBabyCard(),
                  const SizedBox(height: 24),
                  Text(
                    "Elizabeth Greaux",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      height: 32 / 24,
                      color: Color(0xFF090909),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      infoColumn("Age", "36", ageUnit, LucideIcons.calendar),
                      infoColumn(
                        "Weight",
                        "4-6",
                        weightUnit,
                        LucideIcons.weight,
                      ),
                      infoColumn("Size", "16-18", sizeUnit, LucideIcons.ruler),
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
                          "Copy Link",
                          const Icon(
                            LucideIcons.link,
                            size: 24,
                            color: Color(0xFF090909),
                          ),
                          () {},
                        ),
                        _buildShareOption(
                          "Facebook",
                          SvgPicture.asset(facebook, height: 24),
                          () {},
                        ),
                        _buildShareOption(
                          "SMS",
                          const Icon(
                            LucideIcons.messageCircle,
                            size: 24,
                            color: Color(0xFF090909),
                          ),
                          () {},
                        ),
                        _buildShareOption(
                          "Email",
                          const Icon(
                            LucideIcons.mail,
                            size: 24,
                            color: Color(0xFF090909),
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

  Widget infoColumn(String title, String value, String unit, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: const Color(0xFF616161)),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.4,
                color: Color(0xFF090909),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text.rich(
          TextSpan(
            text: '$value ',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 20 / 18,
            ),
            children: [
              TextSpan(
                text: unit,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 20 / 14,
                  letterSpacing: 0.4,
                  color: Color(0xFF090909),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShareOption(
    String label,
    Widget iconWidget,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: iconWidget,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 20 / 14,
              letterSpacing: 0.4,
              color: Color(0xFF090909),
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
