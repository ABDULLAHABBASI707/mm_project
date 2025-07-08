import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../sdk/widgets/home_widget.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'mygoal_screen.dart';
import 'package:badges/badges.dart' as badges;

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
  }

  void _handleAddPressed() {
    setState(() {
      _isAddActive = !_isAddActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.neutral100,
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hi,Angel",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.f24,
                              ),
                            ),
                            badges.Badge(
                              badgeStyle: badges.BadgeStyle(
                                badgeColor: CustomColors.ember,
                              ),
                              badgeContent: Text(
                                '12',
                                style: TextStyle(
                                  color: CustomColors.white,
                                  fontSize: FontSize.f10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              child: Icon(Icons.notifications_none, size: 26),
                            ),
                          ],
                        ).padOnly(
                          left: Sizes.s16,
                          top: Sizes.s64,
                          right: Sizes.s80,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 300,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.s16,
                        vertical: Sizes.s12,
                      ),
                      height: 76,
                      decoration: BoxDecoration(
                        color: CustomColors.white,
                        borderRadius: BorderRadius.circular(Sizes.s16),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "MY BABY",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.f12,
                                  color: CustomColors.black600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Elizabeth",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.f18,
                                  color: CustomColors.black,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: Sizes.s32,
                            padding: const EdgeInsets.symmetric(
                              horizontal: Sizes.s12,
                            ),
                            decoration: BoxDecoration(
                              color: CustomColors.btncolor,
                              borderRadius: BorderRadius.circular(Sizes.s40),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MygoalScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "More Detail",
                                    style: TextStyle(
                                      color: CustomColors.purpule600,
                                      fontSize: FontSize.f14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: Sizes.s6),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: Sizes.s14,
                                  color: CustomColors.purpule600,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingTextWithIcon("BumpEd"),
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
      Padding(
        padding: const EdgeInsets.only(left: Sizes.s16),
        child: Text(
          headingText ?? "",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CustomColors.black,
            fontSize: FontSize.f20,
          ),
        ),
      ),
      const SizedBox(width: Sizes.s12),
      Icon(LucideIcons.info,size: 16,)

    ],
  );
}
