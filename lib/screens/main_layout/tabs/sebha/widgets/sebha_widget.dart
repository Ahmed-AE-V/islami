import 'package:flutter/material.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_strings.dart';
import 'package:islami/constants/app_styles.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({super.key});

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
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
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.35,
      left: MediaQuery.of(context).size.width * 0.06,
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
              left: MediaQuery.of(context).size.width * 0.22,
              right: MediaQuery.of(context).size.width * 0.2,
              top: MediaQuery.of(context).size.height * 0.21,
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
    );
  }
}
