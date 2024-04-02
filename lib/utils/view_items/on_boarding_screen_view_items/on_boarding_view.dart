import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/providers/on_boarding_provider.dart';

import 'package:k_shop/utils/helper/device_utility.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/on_boarding_widget.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///on boarding page view
class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;

  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultSpace),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) {
          final instance = context.read<OnBoardingProvider>();
          instance.newPageIndex(index);
        },
        children: const [
          OnBoardingWidget(
            image: kOnBoardingAnimation1,
            title: kOnBoardingTitle1,
            subTitle: kOnBoardingSubTitle1,
          ),
          OnBoardingWidget(
            image: kOnBoardingAnimation2,
            title: kOnBoardingTitle2,
            subTitle: kOnBoardingSubTitle2,
          ),
          OnBoardingWidget(
            image: kOnBoardingAnimation3,
            title: kOnBoardingTitle3,
            subTitle: kOnBoardingSubTitle3,
          ),
        ],
      ),
    );
  }
}

///on boarding page skip
class OnBoardingSkipBtn extends StatelessWidget {
  const OnBoardingSkipBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: KHelperDeviceUtils.getAppBarHeight(),
      right: k15SP,
      child: TextButton(
        onPressed: () {
          final instance = context.read<OnBoardingProvider>();
          instance.skipAllPage();
        },
        child: const Text(kSkipText),
      ),
    );
  }
}

///on boarding nav dot indicator
class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: KHelperDeviceUtils.getBottomNavBarHeight() * 1.6,
      left: k22SP,
      child: SmoothPageIndicator(
        controller: _controller,
        count: 3,
        onDotClicked: (index) {
          final instance = context.read<OnBoardingProvider>();
          instance.newPageIndex(index);
        },
        effect: JumpingDotEffect(
          dotHeight: 12,
          dotWidth: 12,
          dotColor: darkMode ? kDarkMode : kLightMode,
          activeDotColor: kDotIndicatorColor,
        ),
      ),
    );
  }
}

///Circular Next OnBoarding Page Btn
class OnBoardingNextBtnItemView extends StatelessWidget {
  const OnBoardingNextBtnItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = KHelperFunctions.isDarkMode(context);

    return Positioned(
      right: k22SP,
      bottom: KHelperDeviceUtils.getBottomNavBarHeight() * 1.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: kOnBoardingNextBtnColor,
        ),
        onPressed: () {
          final instance = context.read<OnBoardingProvider>();
          instance.nextPage(context);
        },
        child: Icon(
          Iconsax.arrow_right_3,
          size: k22IS,
          color: isDarkMode ? kDarkMode : kLightMode,
        ),
      ),
    );
  }
}
