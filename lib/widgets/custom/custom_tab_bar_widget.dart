import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';

import '../../constant/colors.dart';

class CustomTabBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomTabBarWidget({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Material(
      color: darkMode ? kLightMode : kDarkMode,
      child: Container(
        decoration: BoxDecoration(
          color: darkMode ? Colors.white10 : Colors.black12.withOpacity(k01ROE),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kDefaultRadius),
            topRight: Radius.circular(kDefaultRadius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: k13SP),
          child: TabBar(
            tabs: tabs,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            padding: const EdgeInsets.symmetric(horizontal: k5SP),
            labelColor: darkMode ? kPrimaryDarkColor : Colors.purple.shade300,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.purple.withOpacity(0.2),
            splashBorderRadius: BorderRadius.circular(kDefaultRadius),
            unselectedLabelColor: darkMode
                ? kTabLabelPrimaryDarkColor
                : kTabLabelPrimaryLightColor,
            indicatorColor: darkMode ? kPrimaryDarkColor : Colors.purple.shade300,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(
        KHelperFunctions.getAppBarHeight() + 14,
      );
}
