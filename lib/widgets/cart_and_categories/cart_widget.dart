import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/circular/circular_container_widget.dart';
import 'package:k_shop/widgets/circular/circular_img_widget.dart';
import 'package:k_shop/widgets/easy_text_widget.dart';

import '../brand/brand_name_with_verify_icon_widget.dart';

class CartWidget extends StatelessWidget {
  final double? imageHeight;
  final bool? isDiscount;
  final String imageUrl;
  final EdgeInsetsGeometry? imagePadding;

  const CartWidget({
    super.key,
    this.imageHeight,
    this.isDiscount,
    this.imageUrl = kNikeSportImg2Path,
    this.imagePadding,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return CircularContainerWidget(
      padding: const EdgeInsets.all(k1SP),
      bgColor: darkMode ? Colors.white10 : Colors.black12.withOpacity(k01ROE),
      radius: kDefaultRadius,
      showBorder: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// top view
          Stack(
            children: [
              /// product image view
              CircularImageWidget(
                padding: imagePadding,
                height: imageHeight ?? kCartImageDefaultHeight,
                imagePath: imageUrl,
                fit: BoxFit.fill,
              ),

              /// discount % text
              Visibility(
                visible: isDiscount ?? true,
                child: const Positioned(
                  top: 10,
                  left: 5,
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
            ],
          ),

          /// bottom view

          // product name and Brand session
          const Padding(
            padding: EdgeInsets.only(left: k5SP, top: k8SP, right: k5SP),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EasyTextWidget(
                  text: "shoe name",
                  maxLine: kDefaultMaxLine,
                  fs: k12FS,
                ),
                Gap(k5SP),
                BrandNameWithVerifyIconWidget(
                  brandName: "Nike",
                ),
              ],
            ),
          ),
          const Spacer(),

          /// price and add to cart session
          Padding(
            padding:
                const EdgeInsets.only(left: k5SP, right: k1SP, bottom: k1SP),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const EasyTextWidget(
                  text: "\$35.5",
                  maxLine: kDefaultMaxLine - 1,
                  fs: k18FS,
                ),
                const Gap(k3SP),
                GestureDetector(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
