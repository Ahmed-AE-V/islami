import 'package:flutter/material.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_images.dart';
import 'package:islami/constants/app_styles.dart';

class RadioPlayer extends StatelessWidget {
  final String radioName;
  const RadioPlayer({super.key, required this.radioName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(AppImages.radioPLayerBG),
          alignment: .bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          spacing: 30,
          children: [
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("Radio $radioName", style: AppStyles.radioPlayerStyle),
              ],
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                Icon(Icons.play_arrow_rounded, size: 44),
                Icon(Icons.volume_up_rounded, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
