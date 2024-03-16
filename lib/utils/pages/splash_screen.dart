import 'dart:async';

import 'package:flutter/material.dart';
import 'package:k_shop/utils/pages/on_boarding_screen.dart';
import 'package:lottie/lottie.dart';

import '../../constant/image_path_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 5000),
      () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const OnBoardingScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// splash animation session
          Lottie.asset(kSplashAnimation),
        ],
      ),
    );
  }
}
