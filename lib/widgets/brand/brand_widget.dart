import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/utils/helper/functions.dart';

import '../../constant/colors.dart';
import '../../constant/dimens.dart';
import 'brand_name_with_verify_icon_widget.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({
    super.key,
    this.height,
    this.width,
    this.margin,
    this.borderColor,
    this.backgroundColor,
    required this.logoPath,
    required this.brandName,
    this.alignment = Alignment.center,
  });
  final AlignmentGeometry? alignment;
  final double? height, width;
  final EdgeInsets? margin;
  final Color? borderColor, backgroundColor;
  final String logoPath;
  final String? brandName;
  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      padding: const EdgeInsets.all(15),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(k20SP),
        border: Border.all(
          color: borderColor ?? Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 55,
            height: 55,
            child: Image.asset(
              logoPath,
              color: darkMode ? kDarkMode : kLightMode,
            ),
          ),
          const Gap(k18SP),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandNameWithVerifyIconWidget(
                brandName: brandName ?? "",
              ),
              Text(
                "35 Products",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelSmall,
              )
            ],
          ),
        ],
      ),
    );
  }
}
