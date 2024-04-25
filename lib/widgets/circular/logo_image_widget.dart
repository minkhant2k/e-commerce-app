import 'package:flutter/material.dart';
import 'package:k_shop/constant/colors.dart';

import '../../constant/dimens.dart';
import '../../utils/helper/functions.dart';

class LogoImageWidget extends StatelessWidget {
  final String imageLogo;
  final double width, height;
  const LogoImageWidget({
    super.key,
    required this.imageLogo,
    this.width = k35IS,
    this.height = k35IS,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(k5SP),
      decoration: BoxDecoration(
        // color: isDarkMode ? kLight.withOpacity(k09) : Colors.white
        //   ..withOpacity(k05),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: isDarkMode ? kDarkMode : kLightMode,
        ),
      ),
      child: Image.asset(
        imageLogo,
      ),
    );
  }
}
