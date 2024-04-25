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
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        padding: const EdgeInsets.symmetric(
          horizontal: k5SP,
        ),
        dividerColor: Colors.purple.withOpacity(0.2),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor:
            darkMode ? kTabLabelPrimaryDarkColor : kTabLabelPrimaryLightColor,
        labelColor: darkMode ? kPrimaryDarkColor : kPrimaryLightColor,
        tabAlignment: TabAlignment.start,
        indicatorColor: darkMode ? kPrimaryDarkColor : kPrimaryLightColor,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(
        KHelperFunctions.getAppBarHeight(),
      );
}
