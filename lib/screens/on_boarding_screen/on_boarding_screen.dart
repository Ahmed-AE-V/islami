import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';
import 'package:islami/screens/main_layout/main_layout_screen.dart';

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
    const pageDecoration = PageDecoration(
      titleTextStyle: AppStyles.boardingTitleStyle,
      bodyTextStyle: AppStyles.boardingBodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      imagePadding: EdgeInsets.only(top: 200, right: 16, left: 16),
      imageFlex: 7,
      bodyFlex: 2,
    );
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColors.gold,
        // color: Colors.black26,
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
      pages: [
        PageViewModel(
          image: Image.asset(AppImages.boarding1),
          title: AppStrings.boarding1Title,
          body: AppStrings.boarding1Body,
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset(AppImages.boarding2),
          title: AppStrings.boarding2Title,
          body: AppStrings.boarding2Body,
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset(AppImages.boarding3),
          title: AppStrings.boarding3Title,
          body: AppStrings.boarding3Body,
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset(AppImages.boarding4),
          title: AppStrings.boarding4Title,
          body: AppStrings.boarding4Body,
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset(AppImages.boarding5),
          title: AppStrings.boarding5Title,
          body: AppStrings.boarding5Body,
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
