import 'package:flutter/material.dart';
import 'package:islami/routes/app_routes.dart';
import 'package:islami/screens/main_layout/ui/main_layout_screen.dart';
import 'package:islami/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboardingComplete = prefs.getBool('onboarding_complete') ?? false;

  runApp(
    MyApp(
      initialRoute: onboardingComplete
          ? AppRoutes.mainLayout
          : AppRoutes.onBoarding,
    ),
  );
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      routes: {
        AppRoutes.mainLayout: (context) => MainLayoutScreen(),
        AppRoutes.onBoarding: (context) => OnBoardingScreen(),
      },
    );
  }
}
