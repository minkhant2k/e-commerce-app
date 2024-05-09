import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';

import '../../../../constant/path_constant.dart';
import '../../../../constant/string.dart';
import '../../../../widgets/circular/circular_img_widget.dart';
import '../../../../widgets/divider_widget.dart';
import '../../../../widgets/list_tile_widget.dart';

/// drawer view session
class CustomDrawer extends StatelessWidget {
  final AdvancedDrawerController drawerController;

  const CustomDrawer({
    super.key,
    required this.drawerController,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    // final h = KHelperFunctions.screenHeight(context);
    return SafeArea(
      minimum: const EdgeInsets.only(
        top: k120SP,
      ),
      child: Column(
        children: <Widget>[
          CircularImageWidget(
            bgColor: darkMode ? Colors.white30 : Colors.black12,
            padding: const EdgeInsets.all(kDefaultPadding - k10SP),
            width: kProfileImageWidth,
            height: kProfileImageHeight,
            fit: BoxFit.cover,
            imagePath: kProfilePlaceholderImage,
          ),
          const Gap(kDefaultPadding),
          Text(
            "Yohan Sung",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Gap(kDefaultPadding),
          const DividerWidget(),
          const Gap(kDefaultPadding),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultSpace),
                child: Text(
                  kAppSettingText,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Gap(kDefaultPadding),
              ListTileWidget(
                icon: Iconsax.document_upload,
                title: kLoadDataText,
                onTap: () {
                  drawerController.hideDrawer();
                },
              ),
              ListTileWidget(
                icon: Iconsax.location,
                title: kGeolocationText,
                onTap: () {
                  drawerController.hideDrawer();
                },
              ),
              ListTileWidget(
                icon: Iconsax.security_user,
                title: kSafeModeText,
                onTap: () {
                  drawerController.hideDrawer();
                },
              ),
              ListTileWidget(
                icon: Iconsax.image,
                title: kHDImageQualityText,
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
        ],
      ),
    );
  }

// @override

// Size get preferredSize => Size.fromHeight(KHelperFunctions.getAppBarHeight());
}
