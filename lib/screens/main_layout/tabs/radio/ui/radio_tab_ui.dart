import 'package:flutter/material.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/screens/main_layout/tabs/radio/widgets/radio_player.dart';
import 'package:islami/screens/main_layout/tabs/radio/widgets/radio_segmented_tab.dart';
import 'package:islami/widgets/header.dart';
import 'package:islami/widgets/tabs_bg.dart';

class RadioTabUi extends StatelessWidget {
  const RadioTabUi({super.key});
  /////////////////////############# ONLY UI NO LOGIC ##########\\\\\\\\\\\\\\\\\\\\
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          TabsBG.backGrounds[AppStrings.radioBgKey]!,
          Header(),
          RadioSegmentedTab(),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: 0,
            /////////////////////############# ONLY UI NO LOGIC ##########\\\\\\\\\\\\\\\\\\\\
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              itemBuilder: (context, index) =>
                  RadioPlayer(radioName: AppStrings.radioNameEx),
              /////////////////////############# ONLY UI NO LOGIC ##########\\\\\\\\\\\\\\\\\\\\
            ),
          ),
        ],
      ),
    );
  }
}
