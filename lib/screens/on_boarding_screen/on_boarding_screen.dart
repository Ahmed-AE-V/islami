import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';
import 'package:islami/screens/main_layout/ui/main_layout_screen.dart';
import 'package:islami/screens/on_boarding_screen/widgets/braoding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final boardKey = GlobalKey<IntroductionScreenState>();
  void _onDone(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainLayoutScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColors.gold,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      showNextButton: true,
      showDoneButton: true,
      showBackButton: true,

      next: Text(
        AppStrings.boardingNextButton,
        style: AppStyles.boardingButtonStyle,
      ),
      done: Text(
        AppStrings.boardingDoneButton,
        style: AppStyles.boardingButtonStyle,
      ),
      back: Text(
        AppStrings.boardingbackButton,
        style: AppStyles.boardingButtonStyle,
      ),
      key: boardKey,
      globalBackgroundColor: AppColors.black,
      globalHeader: Image.asset(AppImages.header),
      onDone: () => _onDone(context),
      pages: BraodingWidget.pagesList,
    );
  }
}
