import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import 'package:mm_project/styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';

class MygoalScreen extends StatefulWidget {
  const MygoalScreen({super.key});

  @override
  State<MygoalScreen> createState() => _MygoalScreenState();
}

class _MygoalScreenState extends State<MygoalScreen> {
  @override
  Widget build(BuildContext context) {
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
                          child: Icon(Icons.arrow_back, size: 24, color: CustomColors.navbar),
                        ),
                        SizedBox(width: 76),
                        Text(
                          "Goal Preferencea",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: FontSize.f16,
                            color: CustomColors.black900,
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
                ).padSymmetric(hor: Sizes.s21,ver: Sizes.s20)
              ),

              Padding(
                padding: const EdgeInsets.only(left:  Sizes.s16, top:  Sizes.s32,bottom: Sizes.s16 ,right:Sizes.s16, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle("Nutritional Management"),
                    preferenceCard("Meal Planning & Preparation",
                        "I will eat at least one food from every food group every day."),
                    preferenceCard("Macronutrient Distribution",
                        "Strategic balance of proteins, carbohydrates, and fats based on individual needs"),
                    preferenceCard("Caloric Awareness",
                        "Understanding energy balance, calorie tracking, and portion control"),
                    preferenceCard("Dietary Patterns",
                        "Specific approaches like Mediterranean, plant-based, keto, or intermittent fasting"),
                    preferenceCard("Nutritional Education",
                        "Learning about food composition, label reading, and nutrient density"),

                    sectionTitle("Physical Activity"),
                    preferenceCard("Resistance Training",
                        "Strength-building exercises using weights, bands, or bodyweight"),
                    preferenceCard("Cardiovascular Exercise",
                        "Aerobic activities that elevate heart rate like running, cycling, or swimming"),
                    preferenceCard("Flexibility & Mobility Work",
                        "Stretching, yoga, and joint mobility exercises"),
                    preferenceCard("NEAT (Non-Exercise Activity Thermogenesis)",
                        "Increasing daily movement outside of formal exercise"),
                    preferenceCard("Structured Programming",
                        "Organized workout plans with progression models and periodization"),

                    sectionTitle("Behavioral Modification"),
                    preferenceCard("Habit Formation & Breaking",
                        "Creating positive routines and eliminating counterproductive behaviors"),
                    preferenceCard("Mindful Eating Practices",
                        "Developing awareness of hunger cues, emotional triggers, and eating patterns"),
                    preferenceCard("Stress Management Techniques",
                        "Methods to reduce cortisol and stress-related eating"),
                    preferenceCard("Sleep Optimization",
                        "Improving sleep quality and duration to support metabolic health"),
                    preferenceCard("Social Support Systems",
                        "Building accountability networks and positive reinforcement structures"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: FontSize.f16,
          fontWeight: FontWeight.w600,
          color: CustomColors.black900,
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
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
      ),
      padding: const EdgeInsets.all(Sizes.s18),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    fontSize: FontSize.f15,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.black900,
                  )),
              SizedBox(height: 8),
              Text(subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: FontSize.f14,
                    color: CustomColors.neutral700,
                    height: 1.4,
                    letterSpacing: 0.4,

                  )),
            ],
          ),
        ],
      ),
    );
  }
}
