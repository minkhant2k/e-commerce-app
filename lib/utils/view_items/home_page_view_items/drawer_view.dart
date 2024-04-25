import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/circular/circular_container_widget.dart';

import '../../../constant/colors.dart';
import '../../../constant/path_constant.dart';
import '../../../constant/string.dart';
import '../../../widgets/divider_widget.dart';
import '../../../widgets/list_tile_widget.dart';

/// drawer view session
class CustomDrawer extends StatelessWidget {
  final AdvancedDrawerController drawerController;
  const CustomDrawer({
    super.key,
    required this.drawerController,
  });

  @override
  Widget build(BuildContext context) {
    final w = KHelperFunctions.screenWidth(context);
    final h = KHelperFunctions.screenHeight(context);
    final darkMode = KHelperFunctions.isDarkMode(context);
    return SafeArea(
      minimum: const EdgeInsets.only(
        top: k80SP,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircularContainerWidget(
            alignment: Alignment.center,
            bgColor: darkMode ? Colors.white70 : Colors.black26,
            radius: k100ROE,
            width: kProfileImageWidth,
            height: kProfileImageHeight,
            showBorder: false,
            child: Image.asset(
              height: 100,
              kProfilePlaceholderImage,
              color: darkMode ? kDarkMode : kLightMode,
              fit: BoxFit.fill,
            ),
          ),
          const Gap(kDefaultPadding),
          Text(
            "Name ",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Gap(kDefaultPadding),
          const DividerWidget(),
          const Gap(kDefaultPadding),
          ListTileWidget(
            icon: Iconsax.home,
            title: kHomeText,
            onTap: () {
              drawerController.hideDrawer();
            },
          ),
          ListTileWidget(
            icon: Iconsax.heart,
            title: kWishlistText,
            onTap: () {
              drawerController.hideDrawer();
            },
          ),
          ListTileWidget(
            icon: Iconsax.logout,
            title: "Log Out",
            onTap: () {
              drawerController.hideDrawer();
            },
          ),
        ],
      ),
    );
  }

  // @override

  // Size get preferredSize => Size.fromHeight(KHelperFunctions.getAppBarHeight());
}
