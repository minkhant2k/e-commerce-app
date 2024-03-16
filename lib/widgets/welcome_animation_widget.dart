import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeAnimationWidget extends StatelessWidget {
  final double width, height;
  final String animationPath;

  const WelcomeAnimationWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.animationPath});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(width: width, height: height, animationPath);
  }
}
