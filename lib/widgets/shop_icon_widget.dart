import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/colors.dart';

import '../utils/helper/functions.dart';

class ShopIconWithBadgeWidget extends StatelessWidget {
  const ShopIconWithBadgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    final adaptColor = darkMode ? kDarkMode : kLightMode;
    final adaptCountColor = darkMode ? kLightMode : kDarkMode;
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -4, end: 1),
      showBadge: true,
      badgeContent: Text(
        '2',
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: adaptCountColor),
      ),
      badgeAnimation: const badges.BadgeAnimation.scale(
        animationDuration: Duration(seconds: 1),
        colorChangeAnimationDuration: Duration(seconds: 1),
        loopAnimation: false,
        curve: Curves.fastOutSlowIn,
        colorChangeAnimationCurve: Curves.easeInCubic,
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: adaptColor,
        padding: const EdgeInsets.all(5),
        borderRadius: BorderRadius.circular(5),
        elevation: 0,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.shopping_bag),
      ),
    );
  }
}
