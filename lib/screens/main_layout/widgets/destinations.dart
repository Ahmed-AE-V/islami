import 'package:flutter/material.dart';
import 'package:islami/constants/app_icons.dart';
import 'package:islami/constants/app_strings.dart';

class Destinations {
  static List<Widget> destinationsList = [
    NavigationDestination(
      icon: Image.asset(AppIcons.quranIcon),
      selectedIcon: Image.asset(AppIcons.selectedQuranIcon),
      label: AppStrings.quranLabel,
    ),
    NavigationDestination(
      icon: Image.asset(AppIcons.hadethIcon),
      selectedIcon: Image.asset(AppIcons.selectedHadethIcon),
      label: AppStrings.hadethLabal,
    ),
    NavigationDestination(
      icon: Image.asset(AppIcons.sebhaIcon),
      selectedIcon: Image.asset(AppIcons.selectedSebhaIcon),
      label: AppStrings.sebhaLabel,
    ),
    NavigationDestination(
      icon: Image.asset(AppIcons.radioIcon),
      selectedIcon: Image.asset(AppIcons.selectedRadioIcon),
      label: AppStrings.radioLabel,
    ),
    NavigationDestination(
      icon: Image.asset(AppIcons.timeIcon),
      selectedIcon: Image.asset(AppIcons.selectedTimeIcon),
      label: AppStrings.timeLabel,
    ),
  ];
}
