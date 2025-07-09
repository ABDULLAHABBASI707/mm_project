import 'package:flutter/material.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/styles/colors/colors.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import '../../sdk/widgets/gridbottomsheet.dart';

class LogWeightHomeScreen extends StatefulWidget {
  const LogWeightHomeScreen({super.key});

  @override
  State<LogWeightHomeScreen> createState() => _LogWeightHomeScreenState();
}

class _LogWeightHomeScreenState extends State<LogWeightHomeScreen> {
  int _selectedIndex = 0;
  bool _isBottomSheetOpen = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        break;
      case 1:
        (){};
        break;
      case 3:
            (){};
        break;
      case 4:
            (){};
        break;
    }
  }

  void _toggleBottomSheet() {
    if (_isBottomSheetOpen) {
      Navigator.pop(context);
      setState(() {
        _isBottomSheetOpen = false;
      });
    } else {
      _showLogBottomSheet();
    }
  }

  // void _showLogBottomSheet() {
  //   setState(() {
  //     _isBottomSheetOpen = true;
  //   });
  //
  //   showModalBottomSheet(
  //     context: context,
  //     backgroundColor: Colors.transparent,
  //     isScrollControlled: true,
  //     elevation: 0,
  //     enableDrag: true,
  //     isDismissible: true,
  //     barrierColor: Colors.transparent,
  //
  //     builder: (_) {
  //       return Container(
  //         margin: EdgeInsets.only(bottom: 85),
  //         child: Align(
  //           alignment: Alignment.bottomCenter,
  //           child: Container(
  //             height: 375,
  //
  //             width: MediaQuery.of(context).size.width,
  //             decoration: const BoxDecoration(
  //               color: Color(0xFFF5F5F5),
  //               borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(12),
  //                 topRight: Radius.circular(12),
  //               ),
  //             ),
  //             child: gridBottomSheet(context: context),
  //           ),
  //         ),
  //       );
  //     },
  //   ).whenComplete(() {
  //     setState(() {
  //       _isBottomSheetOpen = false;
  //     });
  //   });
  // }

  void _showLogBottomSheet() {
    setState(() {
      _isBottomSheetOpen = true;
    });

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 0,
      enableDrag: true,
      isDismissible: true,
      barrierColor: Colors.transparent,
      builder: (_) {
        return Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 85,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.6,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: gridBottomSheet(context: context),
              ),
            ),
          ],
        );
      },
    ).whenComplete(() {
      setState(() {
        _isBottomSheetOpen = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.neutral200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 440,
              child: Stack(
                children: [
                  CustomAppBar(),
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
                                  onTap: () {

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
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        onAddPressed: _toggleBottomSheet,
        isAddButtonActive: _isBottomSheetOpen,

      ),
    );
  }
}

//import 'package:flutter/material.dart';
// import 'package:mm_project/sdk/widgets/custom_appbar.dart';
// import 'package:mm_project/styles/colors/colors.dart';
// import '../../styles/layouts/fonts_family.dart';
// import '../../styles/layouts/sizes.dart';
// import '../../sdk/widgets/gridbottomsheet.dart';
//
// class LogWeightHomeScreen extends StatefulWidget {
//   const LogWeightHomeScreen({super.key});
//
//   @override
//   State<LogWeightHomeScreen> createState() => _LogWeightHomeScreenState();
// }
//
// class _LogWeightHomeScreenState extends State<LogWeightHomeScreen> {
//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   void _showLogBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.transparent,
//       isScrollControlled: true,
//       elevation: 0,
//       builder: (_) => Padding(
//         padding: EdgeInsets.only(
//           bottom: 85,
//         ),
//         child: Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             height: 375,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Color(0xFFF5F5F5),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12),
//                 topRight: Radius.circular(12),
//               ),
//             ),
//             child: gridBottomSheet(context: context),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustomColors.neutral100,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 440,
//               child: Stack(
//                 children: [
//                   CustomAppBar(),
//                   Positioned(
//                     left: 20,
//                     right: 20,
//                     top: 300,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: Sizes.s16,
//                         vertical: Sizes.s12,
//                       ),
//                       height: 76,
//                       decoration: BoxDecoration(
//                         color: CustomColors.white,
//                         borderRadius: BorderRadius.circular(Sizes.s16),
//                         boxShadow: [
//                           BoxShadow(
//                             color: CustomColors.black.withOpacity(0.05),
//                             blurRadius: 10,
//                             offset: const Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "MY BABY",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: FontSize.f12,
//                                   color: CustomColors.black600,
//                                   letterSpacing: 1.2,
//                                 ),
//                               ),
//                               const SizedBox(height: 4),
//                               Text(
//                                 "Elizabeth",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: FontSize.f18,
//                                   color: CustomColors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           Container(
//                             height: Sizes.s32,
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: Sizes.s12,
//                             ),
//                             decoration: BoxDecoration(
//                               color: CustomColors.btncolor,
//                               borderRadius: BorderRadius.circular(Sizes.s40),
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 InkWell(
//                                   onTap: () {},
//                                   child: Text(
//                                     "More Detail",
//                                     style: TextStyle(
//                                       color: CustomColors.purpule600,
//                                       fontSize: FontSize.f14,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: Sizes.s6),
//                                 Icon(
//                                   Icons.arrow_forward_ios,
//                                   size: Sizes.s14,
//                                   color: CustomColors.purpule600,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 85,
//         decoration: BoxDecoration(
//           color: Color(0xFFF5F5F5),
//           boxShadow: [
//             BoxShadow(
//               color: CustomColors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, -2),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             _buildNavItem(Icons.home_outlined, "Home", 0),
//             _buildNavItem(Icons.menu_book_outlined, "Library", 1),
//             _buildAddButton(),
//             _buildNavItem(Icons.restaurant_menu_outlined, "Recipes", 3),
//             _buildNavItem(Icons.grid_view_rounded, "Browse", 4),
//           ],
//         ),
//       ),
//     );
//   }
//
//
//   Widget _buildNavItem(IconData icon, String label, int index) {
//     final isSelected = _selectedIndex == index;
//     return GestureDetector(
//       onTap: () => _onItemTapped(index),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             size: Sizes.s24,
//             color: isSelected
//                 ? CustomColors.purpule600
//                 : const Color(0xFF616161),
//           ),
//           const SizedBox(height: Sizes.s4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: Sizes.s11,
//               height: 16 / 11,
//               letterSpacing: 0.5,
//               color: isSelected
//                   ? CustomColors.black50
//                   : const Color(0xFF616161),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildAddButton() {
//     return GestureDetector(
//       onTap: _showLogBottomSheet,
//       child: Container(
//         width: Sizes.s32,
//         height: Sizes.s32,
//         padding: const EdgeInsets.all(Sizes.s4),
//         decoration: BoxDecoration(
//           color: CustomColors.purpule600,
//           borderRadius: BorderRadius.circular(40),
//           boxShadow: [
//             BoxShadow(
//               color: CustomColors.purpule600.withOpacity(0.3),
//               blurRadius: 12,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: const Icon(Icons.add, color: Colors.white, size: Sizes.s24),
//       ),
//     );
//   }
// }
