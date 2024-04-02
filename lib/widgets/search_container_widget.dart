import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/utils/helper/functions.dart';

import '../constant/dimens.dart';

class SearchContainerWidget extends StatelessWidget {
  final double w;
  final bool showBgColor, showBorder;
  final String text;
  final IconData? icon;
  const SearchContainerWidget({
    super.key,
    required this.w,
    this.showBgColor = true,
    this.showBorder = true,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      width: w,
      padding: const EdgeInsets.all(k12SP),
      decoration: BoxDecoration(
        color: showBgColor
            ? darkMode
                ? kHomeSearchBarDarkModeColor
                : kHomeSearchBarLightModeColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(k25SP),
        border: Border.all(
          color: showBorder
              ? darkMode
                  ? kSearchBorderDarkModeColor
                  : kSearchBorderLightModeColor
              : Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          const Gap(k16SP),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: darkMode
                      ? kSearchHintTextDarkModeColor
                      : kSearchHintTextModeModeColor,
                ),
          )
        ],
      ),
    );
  }
}
