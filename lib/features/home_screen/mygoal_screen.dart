import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import 'package:mm_project/styles/layouts/fonts.dart';
import '../../styles/colors/colors_theme_ext.dart';
import '../../styles/layouts/sizes.dart';

class MygoalScreen extends StatefulWidget {
  const MygoalScreen({super.key});

  @override
  State<MygoalScreen> createState() => _MygoalScreenState();
}

class _MygoalScreenState extends State<MygoalScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: CustomColors.neutral100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: CustomColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back,
                            size: 24,
                            color: CustomColors.navbar,
                          ),
                        ),
                        SizedBox(width: 76),
                        Text(
                          "Goal Preferencea",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: CustomColors.neutral900
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      "Select 5 preference",
                      style: TextStyle(
                        fontSize: FontSize.f20,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.black900,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Your weekly goal lorem ipsum dolor sit amet",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontSize.f14,
                        color: CustomColors.black900,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ).padSymmetric(hor: Sizes.s21, ver: Sizes.s20),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: Sizes.s16,
                  top: Sizes.s32,
                  bottom: Sizes.s16,
                  right: Sizes.s16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle("Nutritional Management"),
                    preferenceCard(
                      "Meal Planning & Preparation",
                      "I will eat at least one food from every food group\nevery day.",
                    ),
                    preferenceCard(
                      "Macronutrient Distribution",
                      "Strategic balance of proteins, carbohydrates, \nand fats based on individual needs",
                    ),
                    preferenceCard(
                      "Caloric Awareness",
                      "Understanding energy balance, calorie tracking,\n and portion control",
                    ),
                    preferenceCard(
                      "Dietary Patterns",
                      "Specific approaches like Mediterranean, plant\n-based, keto, or intermittent fasting",
                    ),
                    preferenceCard(
                      "Nutritional Education",
                      "Learning about food composition, label reading,\n and nutrient density",
                    ),

                    sectionTitle("Physical Activity"),
                    preferenceCard(
                      "Resistance Training",
                      "Strength-building exercises using weights,\n bands, or bodyweight",
                    ),
                    preferenceCard(
                      "Cardiovascular Exercise",
                      "Aerobic activities that elevate heart rate like \nrunning, cycling, or swimming",
                    ),
                    preferenceCard(
                      "Flexibility & Mobility Work",
                      "Stretching, yoga, and joint mobility exercises",
                    ),
                    preferenceCard(
                      "NEAT (Non-Exercise Activity Thermogenesis)",
                      "Increasing daily movement outside of formal\n exercise",
                    ),
                    preferenceCard(
                      "Structured Programming",
                      "Organized workout plans with progression\n models and periodization",
                    ),

                    sectionTitle("Behavioral Modification"),
                    preferenceCard(
                      "Habit Formation & Breaking",
                      "Creating positive routines and eliminating \ncounterproductive behaviors",
                    ),
                    preferenceCard(
                      "Mindful Eating Practices",
                      "Developing awareness of hunger cues, \nemotional triggers, and eating patterns",
                    ),
                    preferenceCard(
                      "Stress Management Techniques",
                      "Methods to reduce cortisol and stress-related \neating",
                    ),
                    preferenceCard(
                      "Sleep Optimization",
                      "Improving sleep quality and duration to support\n metabolic health",
                    ),
                    preferenceCard(
                      "Social Support Systems",
                      "Building accountability networks and positive \nreinforcement structures",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: FontSize.f15,
          fontWeight: FontWeight.w600,
          height: 20 / 15,
          color: Color(0xFF090909),
        ),
      ),
    );
  }

  Widget preferenceCard(String title, String subtitle) {
    return Container(
      constraints: BoxConstraints(minHeight: 104),
      margin: const EdgeInsets.symmetric(vertical: Sizes.s6),
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(Sizes.s6),
      ),
      padding: const EdgeInsets.all(Sizes.s18),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: FontSize.f15,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.black900,
                  height: 20 / 15,
                ),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: FontSize.f14,
                  color: CustomColors.neutral700,
                  height: 18 / 14,
                  letterSpacing: 0.4,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
