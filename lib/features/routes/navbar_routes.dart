import 'package:flutter/material.dart';
import 'package:mm_project/features/home_screen/home_screen.dart';
import '../baby_screen/baby_details.dart';
import '../home_screen/diet_assessment.dart';
import '../log_weight/logweight_homescreen.dart';

class NavigationRoutes {
  static void navigate(BuildContext context, int index) {
    Widget targetScreen;
    switch (index) {
      case 0:
        targetScreen = const HomeScreen();
        break;
      case 1:
        targetScreen = const LogWeightHomeScreen();
        break;
      case 3:
        targetScreen = const BabyDetailsScreen();
        break;
      case 4:
        targetScreen =const DietAssessment ();
        break;
      default:
        return;
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => targetScreen),
          (route) => false,
    );
  }
}
