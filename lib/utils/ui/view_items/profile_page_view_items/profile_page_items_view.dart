import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/utils/ui/view_items/profile_page_view_items/profile_page_view.dart';


import '../../../../constant/dimens.dart';
import '../../../../constant/path_constant.dart';
import '../../../../widgets/circular/circular_img_widget.dart';
import '../../../../widgets/custom/custom_app_bar_widget.dart';
import '../../../../widgets/header_double_curved_widget.dart';

class ProfileTopItemsView extends StatelessWidget {
  const ProfileTopItemsView({
    super.key,
    required this.curveHeight,
    required this.w,
  });

  final double curveHeight;
  final double w;

  @override
  Widget build(BuildContext context) {
    return HeaderDoubleCurvedWidget(
      h: curveHeight,
      w: w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // app bar session
          CustomAppBarWidget(
            leadingWidth: k5SP,
            titleWidget: const Text("Profile"),
            actions: [
              // profile edit session
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.edit,
                ),
              ),
              const Gap(k10SP),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: kDefaultSpace,
              left: kDefaultSpace,
              right: kDefaultSpace / 2,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profile image session
                CircularImageWidget(
                  padding: EdgeInsets.all(kDefaultPadding - k10SP),
                  width: kProfileImageWidth,
                  height: kProfileImageHeight,
                  fit: BoxFit.cover,
                  imagePath: kProfilePlaceholderImage,
                ),
                Gap(
                  kDefaultSpace,
                ),

                /// name, ph no, email, location session
                UserInfoViews(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
