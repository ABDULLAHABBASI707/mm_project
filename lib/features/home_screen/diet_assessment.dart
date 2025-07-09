import 'package:flutter/material.dart';
import 'package:mm_project/sdk/widgets/onboarding_btn.dart';
import 'package:mm_project/styles/colors/colors.dart';

import '../../sdk/widgets/button_widget.dart';
import '../../styles/colors/colors_theme_ext.dart';

class DietAssessment extends StatefulWidget {
  const DietAssessment({super.key});

  @override
  State<DietAssessment> createState() => _DietAssessmentState();
}

class _DietAssessmentState extends State<DietAssessment> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Assessment",
          style: theme.textTheme.titleSmall?.copyWith(
            color: CustomColors.neutral900,
            letterSpacing: 0.4,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            assestmentOption(
              "1",
              "In a typical day, how many servings of fruit do you eat?",
            ),
            const SizedBox(height: 12),
            containerWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 24),
              child: Column(
                children: [
                  TextField(decoration: assestmentField("0")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("1")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("2 or more")),
                ],
              ),
            ),

            assestmentOption(
              "2",
              "In a typical day, how many servings of starchy vegetables do you eat?",
            ),
            const SizedBox(height: 12),
            containerWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 24),
              child: Column(
                children: [
                  TextField(decoration: assestmentField("0")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("1")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("2 or more")),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: assestmentField(
                      "I eat them, just not every day ",
                    ),
                  ),
                ],
              ),
            ),

            assestmentOption(
              "3",
              "In a typical day, how many servings of nonstarchy vegetables do you eat?",
            ),
            const SizedBox(height: 12),
            containerWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 24),
              child: Column(
                children: [
                  TextField(decoration: assestmentField("0")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("1")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("2")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("3 or more")),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: assestmentField(
                      "I eat them, just not every day ",
                    ),
                  ),
                ],
              ),
            ),

            assestmentOption(
              "4",
              "In a typical day, how many servings of protein do you eat?",
            ),
            const SizedBox(height: 12),
            containerWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 24),
              child: Column(
                children: [
                  TextField(decoration: assestmentField("0")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("1-2")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("3-4")),
                  const SizedBox(height: 8),
                  TextField(decoration: assestmentField("5 or more")),
                ],
              ),
            ),

            assestmentOption(
              "5",
              "In a typical day, how many servings of fats do you eat?",
            ),
            const SizedBox(height: 12),
            containerWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 24),
              child: Column(
                children: [
                  // TextField(decoration: assestmentField("")),
                  // const SizedBox(height: 8),
                  RoundButton(
                    btnwidth: double.infinity,
                    title: "View Result",
                    onTap: () {},
                    bgcolor: Color(0xFFEFF0F6),
                    btnheight: 48,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget containerWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 52, right: 24),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: CustomColors.neutral200.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  InputDecoration assestmentField(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: CustomColors.black900),
      contentPadding: const EdgeInsets.only(
        top: 10,
        right: 16,
        bottom: 10,
        left: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
      ),
    );
  }

  Widget assestmentOption(String num, String data) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            num,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: CustomColors.black900,
            ),
          ),
          const SizedBox(width: 28),
          Expanded(
            child: Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: CustomColors.black900,
                letterSpacing: 0.4,
                height: 24 / 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
