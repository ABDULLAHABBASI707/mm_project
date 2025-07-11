import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/features/baby_screen/baby_dialogbox.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import '../../styles/colors/colors_custom.dart';
import '../../styles/layouts/sizes.dart';
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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF).withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BabyDetailAppbar(),
            DecoratedBox(
              decoration: BoxDecoration(
                color: CustomColors.neutral,
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
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: CustomColors.purpule600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Elizabeth Greaux",
                              style: theme.textTheme.headlineLarge?.copyWith(
                                letterSpacing: 0.5,
                                color: CustomColors.neutral600,
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
                            padding: const EdgeInsets.symmetric(
                              horizontal: Sizes.s12,
                            ),
                            decoration: BoxDecoration(
                              color: CustomColors.neutral100,
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
                                  style: theme.textTheme.headlineSmall
                                      ?.copyWith(
                                        letterSpacing: 0.4,
                                        color: CustomColors.neutral900,
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
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        infoColumn(
                          context,
                          "Age",
                          "36",
                          "weeks",
                          LucideIcons.calendar,
                        ),
                        infoColumn(
                          context,
                          "Weight",
                          "4-6",
                          "lb",
                          LucideIcons.weight,
                        ),
                        infoColumn(
                          context,
                          "Size",
                          "16-18",
                          "inches",
                          LucideIcons.ruler,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                   // height: 112,
                    decoration: BoxDecoration(
                      color: CustomColors.neutral100,
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
                            padding: const EdgeInsets.only(right: 20, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Text(
                                  'Your baby is now about the size of a pineapple',
                                  style: theme.textTheme.displayLarge?.copyWith(
                                    color: CustomColors.neutral900,
                                  ),
                                ),
                                Text(
                                  'Your little one is growing fast and getting ready for birth!',
                                  style: theme.textTheme.displaySmall?.copyWith(
                                    color: CustomColors.neutral900,
                                    letterSpacing: 0.4,
                                  )
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
                        sectionTitle(context,'Development Milestones'),
                        milestoneItem(
                          context,
                          'Lungs are almost fully developed',
                          'but still maturing.',
                        ),
                        milestoneItem(
                          context,
                          'Baby is practicing breathing',
                          'by inhaling and exhaling amniotic fluid.',
                        ),
                        milestoneItem(
                          context,
                          'Brain is rapidly developing,',
                          'with new neural connections forming daily.',
                        ),
                        milestoneItem(
                          context,
                          'Kicks may feel stronger and more defined',
                          'as the baby has less space to move.',
                        ),
                        milestoneItem(
                          context,
                          'Fat stores are increasing,',
                          'helping with temperature regulation after birth.',
                        ),
                        milestoneItem(
                          context,
                          'Baby may be head-down',
                          '(but some babies turn later).',
                        ),

                        const SizedBox(height: 24),
                        sectionTitle(context,"What's Happening in Your Body?"),
                        milestoneItem(
                          context,
                          'Increased pressure on the bladder,',
                          'More frequent urination.',
                        ),
                        milestoneItem(
                          context,
                          'Shortness of breath',
                          'as the baby pushes against your lungs.',
                        ),
                        milestoneItem(
                          context,
                          'Braxton Hicks contractions,',
                          '(practice contractions) may become more noticeable.',
                        ),
                        milestoneItem(
                          context,
                          'Colostrum (early breast milk)',
                          'might start leaking from your breasts.',
                        ),

                        const SizedBox(height: 24),
                        sectionTitle(context,"Tips for This Month"),
                        milestoneItem(
                          context,
                          "Monitor baby's movements",
                          '(kick counts) and report any major changes.',
                        ),
                        milestoneItem(
                          context,
                          'Prepare for labor',
                          'pack your hospital bag, choose a birth plan.',
                        ),
                        milestoneItem(
                          context,
                          'Eat iron-rich foods',
                          'to prevent anemia and stay hydrated.',
                        ),
                        milestoneItem(
                          context,
                          'Get plenty of rest',
                          'and sleep on your side to improve circulation.',
                        ),
                        milestoneItem(
                          context,
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
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: CustomColors.neutral900,
                      )
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Want to learn more about pregnancy health, baby care, and parenting tips?",
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: CustomColors.neutral900,
                        letterSpacing: 0.4,
                      )
                    ),
                    SizedBox(height: 24),
                    RoundButton(
                      btnwidth: double.infinity,
                      btnheight: 48,
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
                      bgcolor: CustomColors.purpule600,
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
  Widget sectionTitle(BuildContext context,String title) {
    final theme=Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style:theme.textTheme.bodyLarge?.copyWith(
          color: CustomColors.neutral900,
        )
      ),
    );
  }

  Widget milestoneItem(BuildContext context, String boldText, String subText) {
    final theme=Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            "• ",
            style: TextStyle(fontSize: 18, color: CustomColors.neutral500),
          ),
          SizedBox(width: 8,),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: theme.textTheme.displaySmall?.copyWith(
                  color: CustomColors.neutral900,
                  letterSpacing: 0.4,
                ),
                children: [
                  TextSpan(
                    text: '$boldText\n',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: CustomColors.neutral900,
                    ),
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
                letterSpacing: 0.4,
                color: CustomColors.neutral900,
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
}
