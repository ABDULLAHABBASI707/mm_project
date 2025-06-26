// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// Widget logWeightBottomSheet(BuildContext context) {
//   return Positioned(
//     top: 247,
//     child: Container(
//       height: 480,
//       width: 375,
//       margin: const EdgeInsets.only(top: 247),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: Container(
//               width: 40,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade300,
//                 borderRadius: BorderRadius.circular(2),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Center(
//             child: Text(
//               "Log Weight",
//               style: TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 18,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           const SizedBox(height: 24),
//           Center(
//             child: RichText(
//               text: TextSpan(
//                 text: '0',
//                 style: const TextStyle(
//                   fontSize: 48,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: ' lb',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.grey.shade600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
//           const SizedBox(height: 16),
//           const Text(
//             'Date',
//             style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey.shade300),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             height: 48,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "03/12/2025",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Icon(Icons.calendar_today_outlined, color: Colors.indigo.shade900),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Bump Pic',
//             style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey.shade300),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             height: 48,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Camera or upload",
//                   style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
//                 ),
//                 Icon(Icons.attach_file_outlined, color: Colors.indigo.shade900),
//               ],
//             ),
//           ),
//           const SizedBox(height: 28),
//           Center(
//             child: Container(
//               width: double.infinity,
//               height: 48,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(40),
//               ),
//               alignment: Alignment.center,
//               child: const Text(
//                 "Add Weight",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/extensions/extensions.dart';
import '../../sdk/widgets/home_widget.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import 'package:badges/badges.dart' as badges;

class AddWeightScreen extends StatefulWidget {
  const AddWeightScreen({super.key});

  @override
  State<AddWeightScreen> createState() => _AddWeightScreenState();
}

class _AddWeightScreenState extends State<AddWeightScreen> {
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
                            // Image.asset('assets/Notification.png', height: 40),
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
                    top: 247,
                    child: Container(
                      height: 480,
                      width: 375,
                      margin: const EdgeInsets.only(top: 247),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 40,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Center(
                            child: Text(
                              "Log Weight",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: '0',
                                style: const TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' lb',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
                          const SizedBox(height: 16),
                          const Text(
                            'Date',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "03/12/2025",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.indigo.shade900,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Bump Pic',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Camera or upload",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.attach_file_outlined,
                                  color: Colors.indigo.shade900,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 28),
                          Center(
                            child: Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Add Weight",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
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
