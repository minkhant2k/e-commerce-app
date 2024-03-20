import 'package:flutter/material.dart';
import 'package:k_shop/providers/on_boarding_provider.dart';
import 'package:k_shop/utils/view_items/on_boarding_screen_view_items/on_boarding_screen_items_view.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnBoardingProvider>(
      create: (_) => OnBoardingProvider(),
      child: const Scaffold(
        body: OnBoardingScreenItemsView(),
      ),
    );
  }
}
