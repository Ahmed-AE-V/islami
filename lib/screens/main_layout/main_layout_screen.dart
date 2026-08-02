import 'package:flutter/material.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_icons.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int currentIndex = 0;
  int sebhaCounter = 0;
  int tasbaehCounter = 0;
  List<String> tasabeh = [
    AppStrings.tasabeh1,
    AppStrings.tasabeh2,
    AppStrings.tasabeh3,
    AppStrings.tasabeh4,
    AppStrings.tasabeh5,
  ];
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
      body: <Widget>[
        Card(),
        Card(),
        Card(
          child: Column(
            crossAxisAlignment: .stretch,

            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.sebhaBG,
                      width: double.infinity,
                      fit: .cover,
                    ),
                    Positioned(
                      top: 30,
                      // right: 70,
                      left: 50,
                      child: Image.asset(AppImages.header),
                    ),
                    Positioned(
                      // width: double.infinity,
                      top: 217,
                      right: 40,
                      // left: 56,
                      child: Text(
                        AppStrings.sebhaText,
                        style: AppStyles.sebhaTextStyle,
                        // textAlign: .center,
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 26,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            sebhaCounter++;
                            if (sebhaCounter == 5) {
                              sebhaCounter = 0;
                              if (tasbaehCounter < tasabeh.length - 1) {
                                tasbaehCounter++;
                              } else {
                                tasbaehCounter = 0;
                              }
                            }
                          });
                        },
                        child: Stack(
                          children: [
                            Image.asset(AppImages.sebha, scale: 1.1),
                            Positioned(
                              left: MediaQuery.of(context).size.width * 0.24,
                              top: MediaQuery.of(context).size.height * 0.2,
                              child: Column(
                                // crossAxisAlignment: .stretch,
                                children: [
                                  Text(
                                    tasabeh[tasbaehCounter],
                                    style: AppStyles.sebhaTextStyle,
                                    textAlign: .center,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    sebhaCounter.toString(),
                                    style: AppStyles.sebhaTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(),
        Card(),
      ][currentIndex],
    );
  }
}
