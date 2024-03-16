import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import '../utils/helper/functions.dart';

class ImageLogoWidget extends StatelessWidget {
  final String imageLogo;
  const ImageLogoWidget({super.key, required this.imageLogo});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      width: k35IS,
      height: k35IS,
      padding: const EdgeInsets.all(k5SP),
      decoration: BoxDecoration(
        color: isDarkMode ? kLight.withOpacity(k09) : Colors.black
          ..withOpacity(k09),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        imageLogo,
      ),
    );
  }
}
