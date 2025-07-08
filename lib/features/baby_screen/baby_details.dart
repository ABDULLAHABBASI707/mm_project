import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/features/baby_screen/baby_dialogbox.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import '360_dialog.dart';
import 'baby_bottomsheet.dart';
import 'babydetails_appbar.dart';

class BabyDetailsScreen extends StatefulWidget {
  const BabyDetailsScreen({super.key});

  @override
  State<BabyDetailsScreen> createState() => _BabyDetailsScreenState();
}

class _BabyDetailsScreenState extends State<BabyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BabyDetailAppbar(),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 24,
                      right: 34,
                      bottom: 24,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Text(
                                "MY BABY",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.f12,
                                  color: const Color(0xFF7F67A1),
                                  letterSpacing: 0.5,
                                  height: 16 / 12,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Elizabeth Greaux",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.f24,
                                height: 32/24,
                                color: Color(0xFF090909),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => const BabyDialogScreen(),
                            );
                          },
                          borderRadius: BorderRadius.circular(Sizes.s40),
                          child: Container(
                            height: 32,
                            padding: const EdgeInsets.symmetric(horizontal: Sizes.s12),
                            decoration: BoxDecoration(
                              color: CustomColors.btncolor,
                              borderRadius: BorderRadius.circular(Sizes.s40),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  LucideIcons.pencil,
                                  size: Sizes.s14,
                                  color: const Color(0xFF616161),
                                ),
                                const SizedBox(width: Sizes.s8),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: const Color(0xFF090909),
                                    fontSize: FontSize.f14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        infoColumn("Age", "36", "weeks", LucideIcons.calendar),
                        infoColumn("Weight", "4-6", "lb", LucideIcons.weight),
                        infoColumn("Size", "16-18", "inches", LucideIcons.ruler,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16,right: 16,top: 20),
                    height: 112,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            right: 16,
                            top: 16,
                            bottom: 16,
                          ),
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),

                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right:20,
                              left: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Your baby is now about the size of a pineapple',
                                  style: TextStyle(
                                    fontSize: 14,
                                    height: 18 / 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Your little one is growing fast and getting ready for birth!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    height: 18 / 14,
                                    letterSpacing: 0.4,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sectionTitle('Development Milestones'),
                        milestoneItem(
                          'Lungs are almost fully developed',
                          'but still maturing.',
                        ),
                        milestoneItem(
                          'Baby is practicing breathing',
                          'by inhaling and exhaling amniotic fluid.',
                        ),
                        milestoneItem(
                          'Brain is rapidly developing,',
                          'with new neural connections forming daily.',
                        ),
                        milestoneItem(
                          'Kicks may feel stronger and more defined',
                          'as the baby has less space to move.',
                        ),
                        milestoneItem(
                          'Fat stores are increasing,',
                          'helping with temperature regulation after birth.',
                        ),
                        milestoneItem(
                          'Baby may be head-down',
                          '(but some babies turn later).',
                        ),

                        const SizedBox(height: 24),
                        sectionTitle("What's Happening in Your Body?"),
                        milestoneItem(
                          'Increased pressure on the bladder,',
                          'More frequent urination.',
                        ),
                        milestoneItem(
                          'Shortness of breath',
                          'as the baby pushes against your lungs.',
                        ),
                        milestoneItem(
                          'Braxton Hicks contractions,',
                          '(practice contractions) may become more noticeable.',
                        ),
                        milestoneItem(
                          'Colostrum (early breast milk)',
                          'might start leaking from your breasts.',
                        ),

                        const SizedBox(height: 24),
                        sectionTitle("Tips for This Month"),
                        milestoneItem(
                          "Monitor baby's movements",
                          '(kick counts) and report any major changes.',
                        ),
                        milestoneItem(
                          'Prepare for labor',
                          'pack your hospital bag, choose a birth plan.',
                        ),
                        milestoneItem(
                          'Eat iron-rich foods',
                          'to prevent anemia and stay hydrated.',
                        ),
                        milestoneItem(
                          'Get plenty of rest',
                          'and sleep on your side to improve circulation.',
                        ),
                        milestoneItem(
                          'If baby is breech',
                          'discuss options with your doctor for positioning.',
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 32),
              height: 192,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stay updated with expert insights",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 28 / 20,
                        color: Color(0xFF090909),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Want to learn more about pregnancy health, baby care, and parenting tips?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4,
                        height: 20 / 14,
                      ),
                    ),
                    SizedBox(height: 24),
                    RoundButton(
                      btnwidth: double.infinity,
                      title: "Learn More",
                      onTap: () {
                        BabyShareBottomSheet.show(
                          context,
                          babyName: "Angel",
                          age: "24",
                          weight: "6.5",
                          size: "19",
                          ageUnit: "weeks",
                          weightUnit: "lb",
                          sizeUnit: "inches",
                        );
                      },
                      bgcolor: Color(0xFF7F67A1),
                      btnheight: 48,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Header
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 28 / 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget milestoneItem(String boldText, String subText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontSize: 18, color: Color(0xFF9E9E9E)),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.black),
                children: [
                  TextSpan(
                    text: '$boldText\n',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: subText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Info Column
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
}
