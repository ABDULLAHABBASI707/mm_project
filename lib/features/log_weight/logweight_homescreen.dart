import 'package:flutter/material.dart';
import 'package:mm_project/sdk/widgets/baby_container.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/styles/colors/colors.dart';
import '../../sdk/widgets/custom_navbar.dart';
import '../../styles/layouts/fonts.dart';
import '../../styles/layouts/sizes.dart';
import '../../sdk/widgets/gridbottomsheet.dart';
import '../baby_screen/baby_details.dart';

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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BabyDetailsScreen()),
        );
        break;
      case 3:
        break;
      case 4:
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
                 BabyContainer(),
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

