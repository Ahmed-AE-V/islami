import 'package:flutter/material.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_icons.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: NavigationBar(
        labelTextStyle: WidgetStateTextStyle.resolveWith(
          (states) => AppStyles.navLabelStyle,
        ),
        backgroundColor: AppColors.gold,
        selectedIndex: currentIndex,
        indicatorColor: AppColors.black.withAlpha(60),
        labelBehavior: .onlyShowSelected,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },

        destinations: [
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
        ],
      ),
    );
  }
}
