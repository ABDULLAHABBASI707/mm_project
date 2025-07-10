import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../sdk/widgets/baby_container.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../sdk/widgets/home_widget.dart';
import '../../styles/colors/colors_theme_ext.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import '../baby_screen/baby_details.dart';
import '../log_weight/logweight_homescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isAddActive = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LogWeightHomeScreen()),
      );
    }
    if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BabyDetailsScreen()),
      );
    }
  }

  void _handleAddPressed() {
    setState(() {
      _isAddActive = !_isAddActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: colors?.bodyTextColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 440,
              child: Stack(
                children: [
                  Container(
                    height: 358,
                    decoration: BoxDecoration(color: CustomColors.purpule),
                    child: Column(children: [CustomAppBar()]),
                  ),
                  BabyContainer(),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(child: headingTextWithIcon("BumpEd")),
                const SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Set lesson preferences",
                  description:
                      "Add lesson preferences to get\ncustomized weekly lessons",
                  buttonText: "Add Preferences",
                  iconPath: 'assets/Group 2610515.png',
                ),
                const SizedBox(height: Sizes.s32),
                headingTextWithIcon("My goals this week"),
                const SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Set goal preferences",
                  description:
                      "Add goal preferences to get\ncustomized weekly goals",
                  buttonText: "Add Preferences",
                  iconPath: 'assets/Simple-Illustration.png',
                ),
                const SizedBox(height: Sizes.s32),
                headingTextWithIcon("Recommendations"),
                const SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Take diet Assessment",
                  description:
                      "Take our diet assessment to get\npersonalized calorie and weight\nrecommendations",
                  buttonText: "Take Assessment",
                  iconPath: 'assets/Group 2610507.png',
                ),
                const SizedBox(height: 85),
              ],
            ).padSymmetric(hor: Sizes.s16),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        onAddPressed: _handleAddPressed,
        isAddButtonActive: _isAddActive,
      ),
    );
  }

  Widget headingTextWithIcon(String? headingText) => Row(
    children: [
      SizedBox(width: 3,),
      Text(
        headingText ?? "",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: CustomColors.black,
          fontSize: FontSize.f20,
        ),
      ),
      const SizedBox(width: Sizes.s12),
      Icon(LucideIcons.info, size: 16),
    ],
  );
}
