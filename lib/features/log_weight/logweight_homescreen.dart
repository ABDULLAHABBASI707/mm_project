import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/features/log_weight/add_weight.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'package:badges/badges.dart' as badges;

class LogWeightHomeScreen extends StatefulWidget {
  const LogWeightHomeScreen({super.key});

  @override
  State<LogWeightHomeScreen> createState() => _LogWeightHomeScreenState();
}

class _LogWeightHomeScreenState extends State<LogWeightHomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLogBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => bottomSheetWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.neutral100,
      body: SingleChildScrollView(
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
                              "Hi, Angel",
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
                              child: const Icon(
                                Icons.notifications_none,
                                size: 26,
                              ),
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
                            offset: const Offset(0, 2),
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
                                  onTap: () {},
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              color: CustomColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
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

  Widget logItems(String image, String data) {
    return Container(
      width: 166,
      height: 112,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          children: [
            SvgPicture.asset(image, height: 40),
            const SizedBox(height: 12),
            Text(
              data,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: CustomColors.black900,
              ),
            ),
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
          Icon(
            icon,
            size: Sizes.s24,
            color: isSelected
                ? CustomColors.purpule600
                : const Color(0xFF616161),
          ),
          const SizedBox(height: Sizes.s4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Sizes.s11,
              height: 16 / 11,
              letterSpacing: 0.5,
              color: isSelected
                  ? CustomColors.black50
                  : const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: _showLogBottomSheet,
      child: Container(
        width: Sizes.s32,
        height: Sizes.s32,
        padding: const EdgeInsets.all(Sizes.s4),
        decoration: BoxDecoration(
          color: CustomColors.purpule600,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: CustomColors.purpule600.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.add, color: Colors.white, size: Sizes.s24),
      ),
    );
  }

  Widget bottomSheetWidget() {
    return Stack(
      children: [
        Positioned(
          top: 435,
          left: 0,
          right: 0,
          child: Container(
            height: 292,
            //  margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddWeightScreen()));
                        },

                        child: logItems(add_weight, 'Add Weight'),
                      ),
                      logItems(add_activity, 'Add Activity'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      logItems(add_activity, 'Contraction'),
                      logItems(kicks_counter, 'Kicks Counter'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
