import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';

class BraodingWidget {
  static const pageDecoration = PageDecoration(
    titleTextStyle: AppStyles.boardingTitleStyle,
    bodyTextStyle: AppStyles.boardingBodyStyle,
    bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
    imagePadding: EdgeInsets.only(top: 200, right: 16, left: 16),
    imageFlex: 7,
    bodyFlex: 2,
  );
  static List<PageViewModel>? pagesList = [
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
  ];
}
