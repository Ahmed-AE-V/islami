import 'package:flutter/material.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_styles.dart';
import 'package:islami/screens/main_layout/tabs/radio/ui/radio_tab_ui.dart';
import 'package:islami/screens/main_layout/tabs/sebha/ui/sebha_tab_ui.dart';
import 'package:islami/screens/main_layout/widgets/destinations.dart';

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

        destinations: Destinations.destinationsList,
      ),
      body: <Widget>[
        Card(),
        Card(),
        SebhaTabUi(),
        RadioTabUi(),
        Card(),
      ][currentIndex],
    );
  }
}
