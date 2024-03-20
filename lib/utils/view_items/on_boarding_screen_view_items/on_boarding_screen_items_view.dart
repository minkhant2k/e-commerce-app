import 'package:flutter/material.dart';
import 'package:k_shop/providers/on_boarding_provider.dart';
import 'package:k_shop/utils/view_items/on_boarding_screen_view_items/on_boarding_view.dart';
import 'package:provider/provider.dart';

class OnBoardingScreenItemsView extends StatelessWidget {
  const OnBoardingScreenItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// page view
        Selector<OnBoardingProvider, PageController>(
          selector: (_, notifier) => notifier.pageController,
          builder: (_, notifier, __) => OnBoardingPageView(
            pageController: notifier,
          ),
        ),

        /// skip btn
        const OnBoardingSkipBtn(),

        ///dot indicator
        Selector<OnBoardingProvider, PageController>(
          selector: (_, notifier) => notifier.pageController,
          builder: (_, notifier, __) =>
              OnBoardingDotIndicator(controller: notifier),
        ),

        ///next btn
        const OnBoardingNextBtnItemView(),
      ],
    );
  }
}
