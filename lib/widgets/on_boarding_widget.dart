import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/constant/dimens.dart';

import '../constant/path_constant.dart';
import '../utils/helper/functions.dart';

class OnBoardingWidget extends StatelessWidget {
  final String title, subTitle;
  final String? image;
  const OnBoardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: KHelperFunctions.screenWidth(context) * 0.8,
            height: KHelperFunctions.screenHeight(context) * 0.6,
            child: Image.asset(
              image ?? kOnBoardingAnimation1,
              color: KHelperFunctions.isDarkMode(context)
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          const Gap(k20SP),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(k20SP),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            maxLines: kDefaultMaxLine,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
