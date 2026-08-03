import 'package:flutter/material.dart';
import 'package:islami/constants/app_images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.03,
      left: MediaQuery.of(context).size.width * 0.129,
      child: Image.asset(AppImages.header),
    );
  }
}
