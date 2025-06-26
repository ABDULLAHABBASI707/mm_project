import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
                          //SizedBox(width: 143),
                           badges.Badge(
                             badgeStyle: badges.BadgeStyle(
                               badgeColor: CustomColors.ember,
                             ),
                             badgeContent: Text('12',
                               style: TextStyle(
                                   color: CustomColors.white,
                                 fontSize: FontSize.f10,
                                 fontWeight: FontWeight.w600,
                               ),),
                             child: Icon(Icons.notifications_none,size:26),
                           ),
                           // Image.asset('assets/Notification.png', height: 40),
                          ],
                        ).padOnly(left: Sizes.s16, top: Sizes.s64, right: Sizes.s80),
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
                              SizedBox(height: 4),
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
                          Spacer(),
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
                                SizedBox(width: Sizes.s6),
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
                SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Set lesson preferences",
                  description:
                      "Add lesson preferences to get\ncustomized weekly lessons",
                  buttonText: "Add Preferences",
                  iconPath: 'assets/Group 2610515.png',
                ),
                SizedBox(height: Sizes.s32),
                headingTextWithIcon("My goals this week"),
                SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Set goal preferences",
                  description:
                      "Add goal preferences to get\ncustomized weekly goals",
                  buttonText: "Add Preferences",
                  iconPath: 'assets/Simple-Illustration.png',
                ),
                SizedBox(height: Sizes.s32),
                headingTextWithIcon("Recommendations"),
                SizedBox(height: Sizes.s16),
                CardWidget(
                  heading: "Take diet Assessment",
                  description:
                      "Take our diet assessment to get\npersonalized calorie and weight\nrecommendations",
                  buttonText: "Take Assessment",
                  iconPath: 'assets/Group 2610507.png',
                ),
                SizedBox(height: 85),
              ],
            ).padSymmetric(hor: Sizes.s16),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              color: CustomColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(Icons.home_outlined, "Home", 0),
            _buildNavItem(Icons.menu_book_outlined, "Library", 1),
            _buildAddButton(),
            _buildNavItem(Icons.restaurant_menu_outlined, "Recipes", 3),
            _buildNavItem(Icons.grid_view_rounded, "Browse", 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Sizes.s24,
            height: Sizes.s24,
            child: Icon(
              icon,
              size: Sizes.s24,
              color: isSelected ? CustomColors.purpule600 : Color(0xFF616161),
            ),
          ),
          SizedBox(height: Sizes.s4),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Neue Haas Grotesk Display Pro',
              fontWeight: FontWeight.w500,
              fontSize: Sizes.s11,
              height: 16 / 11,
              letterSpacing: 0.5,
              color: isSelected ? CustomColors.black50 : Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: Sizes.s32,
        height: Sizes.s32,
        padding: EdgeInsets.all(Sizes.s4),
        decoration: BoxDecoration(
          color: CustomColors.purpule600,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: CustomColors.purpule600.withOpacity(0.3),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Icon(Icons.add, color: Colors.white, size: Sizes.s24),
      ),
    );
  }
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
    Image.asset('assets/Icon Library.png', height: Sizes.s16),
  ],
);
