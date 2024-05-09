import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/account_setting__widget.dart';

import '../../../../constant/dimens.dart';
import '../../../../constant/string.dart';
import '../../view_items/profile_page_view_items/profile_page_items_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = KHelperFunctions.screenWidth(context);
    final h = KHelperFunctions.screenHeight(context);
    final curveHeight = h <= kDefaultScreenHeight ? h * k05SP : h * k04SP;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// profile page top view
            ProfileTopItemsView(curveHeight: curveHeight, w: w),

            // profile page body view
             Padding(
              padding: const EdgeInsets.all(k12SP),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:kDefaultSpace-k12SP),
                    child: Text(kAccountSettingText,

                      style: Theme.of(context).textTheme.titleLarge,),
                  ),
                  const Gap(kDefaultSpace),
                  const AccountSettingWidget(
                    iconData: Iconsax.safe_home,
                      titleText: kCategoryText1,
                      subTitleText: kSubcategoryText1),
                  const AccountSettingWidget(
                      iconData: Iconsax.shopping_cart,
                      titleText: kCategoryText2,
                      subTitleText: kSubcategoryText2),
                  const AccountSettingWidget(
                      iconData: Iconsax.bag_tick,
                      titleText: kCategoryText3,
                      subTitleText: kSubcategoryText3),
                  const AccountSettingWidget(
                      iconData: Iconsax.bank,
                      titleText: kCategoryText4,
                      subTitleText: kSubcategoryText4),
                  const AccountSettingWidget(
                      iconData: Iconsax.discount_shape,
                      titleText: kCategoryText5,
                      subTitleText: kSubcategoryText5),
                  const AccountSettingWidget(
                      iconData: Iconsax.notification,
                      titleText: kCategoryText6,
                      subTitleText: kSubcategoryText6),
                  const AccountSettingWidget(
                      iconData: Iconsax.security_card,
                      titleText: kCategoryText7,
                      subTitleText: kSubcategoryText7),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
