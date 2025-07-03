import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
        height: 720,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Share your baby',
                    style: TextStyle(
                      fontSize: 18,
                      height: 28 / 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF090909),
                    ),
                  ),
                  const SizedBox(height: 24),

                  _buildBabyCard(),
                  SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Elizabeth Greaux",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          height: 32 / 24,
                          color: Color(0xFF090909),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        infoColumn("Age", "36", "weeks", LucideIcons.calendar),
                        infoColumn("Weight", "4-6", "lb", LucideIcons.weight),
                        infoColumn(
                          "Size",
                          "16-18",
                          "inches",
                          LucideIcons.ruler,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Divider(
                    color: Color(0xFFE0E0E0), // light grey
                    thickness: 1,
                    height: 1,
                  ),

                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildShareOption("Copy Link", LucideIcons.link, () {}),
                      _buildShareOption(
                        "Facebook",
                        LucideIcons.facebook,
                        () {},
                      ),
                      _buildShareOption(
                        "SMS",
                        LucideIcons.messageCircle,
                        () {},
                      ),
                      _buildShareOption("Email", LucideIcons.mail, () {}),
                    ],
                  ),

                  //  const SizedBox(height: 20),
                ],
              ),
            ),
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
      child: Column(children: []),
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

  Widget _buildShareOption(String label, IconData icon, VoidCallback onTap) {
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
            child: Icon(icon, size: 24, color: const Color(0xFF090909)),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF090909),
            ),
          ),
        ],
      ),
    );
  }

  // // Static method to show the bottom sheet
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
