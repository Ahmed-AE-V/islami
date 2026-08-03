import 'package:flutter/material.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/screens/main_layout/tabs/radio/widgets/radio_segmented_tab.dart';
import 'package:islami/widgets/header.dart';
import 'package:islami/widgets/tabs_bg.dart';

class RadioTabUi extends StatelessWidget {
  const RadioTabUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          TabsBG.backGrounds[AppStrings.radioBgKey]!,
          Header(),
          RadioSegmentedTab(),
        ],
      ),
    );
  }
}
