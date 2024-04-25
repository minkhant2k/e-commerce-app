import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../../constant/dimens.dart';
import '../../utils/helper/functions.dart';

class BrandNameWithVerifyIconWidget extends StatelessWidget {
  final String brandName;
  final bool isShowVerifyIcon;
  final TextOverflow? overflow;
  const BrandNameWithVerifyIconWidget({
    super.key,
    required this.brandName,
    this.isShowVerifyIcon = true,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          brandName,
          maxLines: kDefaultMaxLine - 1,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                overflow: overflow,
                color: darkMode ? Colors.white70 : Colors.black87,
              ),
        ),
        // EasyTextWidget(
        //   overflow: overflow,
        //   text: brandName,
        //   color: darkMode ? Colors.white70 : Colors.black87,
        //   maxLine: kDefaultMaxLine - 1,
        //   fs: k12FS,
        // ),
        const Gap(k3SP),
        Visibility(
          visible: isShowVerifyIcon,
          child: Icon(
            Iconsax.verify5,
            size: k14IS,
            color: Colors.blue.shade800,
          ),
        )
      ],
    );
  }
}
