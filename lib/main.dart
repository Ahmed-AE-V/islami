import 'package:flutter/material.dart';
import 'package:islami/routes/app_routes.dart';
import 'package:islami/screens/main_layout/main_layout_screen.dart';
import 'package:islami/screens/on_boarding_screen/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      routes: {AppRoutes.mainLayout: (context) => MainLayoutScreen()},
    );
  }
}
