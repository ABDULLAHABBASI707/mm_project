import 'package:flutter/material.dart';
import 'package:mm_project/features/home_screen/home_screen.dart';
import 'features/home_screen/diet_assessment.dart';
import 'features/log_weight/logweight_homescreen.dart';
import 'features/onboarding_screen/onboarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LogWeightHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


