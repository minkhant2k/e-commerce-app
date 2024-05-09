import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/widgets/brand/brand_name_with_verify_icon_widget.dart';
import 'package:k_shop/widgets/circular/circular_img_widget.dart';

import '../../../constant/colors.dart';
import '../../../widgets/circular/circular_container_widget.dart';
import '../../constant/dimens.dart';
import '../../constant/string.dart';
import '../../utils/helper/functions.dart';
import '../easy_text_widget.dart';

class FavCartWidget extends StatelessWidget {
  final String? imagePath;
  final bool? isDiscount;
  const FavCartWidget({
    super.key,
    this.imagePath,
    this.isDiscount,
  });

  @override
  Widget build(BuildContext context) {
    final w = KHelperFunctions.screenWidth(context);
    final darkMode = KHelperFunctions.isDarkMode(context);
    return CircularContainerWidget(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      radius: kDefaultRadius,
      width: w,
      height: kCartImageDefaultHeight,
      showBorder: false,
      bgColor: darkMode ? Colors.white10 : Colors.black12.withOpacity(k01ROE),
      child: Stack(
        children: [
          buildCart(w, context),

          ///favorite icon btn
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.heart5),
              color: kFavoriteIconColor,
            ),
          ),

          /// discount % text
          Visibility(
            visible: isDiscount ?? true,
            child: const Positioned(
              top: 10,
              left: 10,
              child: CircularContainerWidget(
                showBorder: false,
                radius: kDefaultRadius - k6SP,
                padding: EdgeInsets.all(k6SP),
                bgColor: Colors.green,
                child: EasyTextWidget(
                  text: "25%",
                  fs: 12,
                ),
              ),
            ),
          ),

          /// add to cart btn session
          Positioned(
            bottom: 5,
            right: 5,
            child: GestureDetector(
              onTap: () {},
              child: const CircularContainerWidget(
                showBorder: false,
                width: k35SP,
                height: k35SP,
                radius: k12ROE,
                bgColor: Colors.black,
                child: Icon(
                  Iconsax.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// cart session
  Row buildCart(double w, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Product Image session
        Padding(
          padding: const EdgeInsets.all(k1SP),
          child: Stack(children: [
            CircularImageWidget(
              height: kCartImageDefaultHeight,
              width: w * 0.35,
              bgColor: Colors.transparent,
              imagePath: imagePath ?? kNikeSportImg1Path,
            ),
          ]),
        ),

        /// Product Info session
        Padding(
          padding: const EdgeInsets.only(
            left: k15SP,
            top: k10SP,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sport Shirt",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Gap(k5SP),
              const BrandNameWithVerifyIconWidget(
                brandName: kNikeText,
              ),
              const Spacer(),
              Text(
                "\$34.50",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Gap(k5SP),
              Text(
                "Red, Blue, Green",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Gap(k15SP),
            ],
          ),
        ),
      ],
    );
  }
}
