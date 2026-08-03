import 'package:flutter/material.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';
import 'package:islami/screens/main_layout/tabs/sebha/widgets/sebha_widget.dart';
import 'package:islami/widgets/header.dart';
import 'package:islami/widgets/tabs_bg.dart';

class SebhaTabUi extends StatefulWidget {
  const SebhaTabUi({super.key});

  @override
  State<SebhaTabUi> createState() => _SebhaTabUiState();
}

class _SebhaTabUiState extends State<SebhaTabUi> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          TabsBG.backGrounds[AppStrings.sebhaBgkey]!,
          Header(),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.129,
            child: Text(AppStrings.sebhaText, style: AppStyles.sebhaTextStyle),
          ),
          SebhaWidget(),
        ],
      ),
    );
  }
}
