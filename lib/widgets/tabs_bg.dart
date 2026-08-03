import 'package:flutter/material.dart';
import 'package:islami/constants/app_images.dart';

class TabsBG {
  static Map<String, Image> backGrounds = {
    "sebhaBG": Image.asset(
      AppImages.sebhaBG,
      width: double.infinity,
      fit: .fill,
    ),
    "radioBG": Image.asset(
      AppImages.radioBG,
      fit: .fill,
      width: double.infinity,
    ),
  };
}
