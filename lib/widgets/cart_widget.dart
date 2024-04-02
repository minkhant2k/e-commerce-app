import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/circular_container_widget.dart';
import 'package:k_shop/widgets/circular_img_widget.dart';
import 'package:k_shop/widgets/easy_text_widget.dart';

class CartWidget extends StatelessWidget {
  final double? imageHeight;
  final bool? isDiscount;

  const CartWidget({
    super.key,
    this.imageHeight,
    this.isDiscount,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(k2SP),
      decoration: BoxDecoration(
        color: darkMode ? Colors.white10 : Colors.black12.withOpacity(k01ROE),
        borderRadius: BorderRadius.circular(kDefaultRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// top view
          Stack(
            children: [
              /// product image view
              CircularImageWidget(
                height: imageHeight ?? kCartImageDefaultHeight,
                imagePath: kCarouselImage3Path,
                fit: BoxFit.fill,
              ),

              /// discount % text
              Visibility(
                visible: isDiscount ?? true,
                child: const Positioned(
                  top: 10,
                  left: 5,
                  child: CircularContainerWidget(
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
          Padding(
            padding: const EdgeInsets.only(left: k5SP, top: k5SP, right: k5SP),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EasyTextWidget(
                  text: "shoe name",
                  maxLine: kDefaultMaxLine,
                  fs: k12FS,
                ),
                const Gap(k5SP),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    EasyTextWidget(
                      text: "Nike",
                      color: Colors.grey.shade600,
                      maxLine: kDefaultMaxLine - 1,
                      fs: k12FS,
                    ),
                    const Gap(k3SP),
                    Icon(
                      Iconsax.verify5,
                      size: k14IS,
                      color: Colors.blue.shade800,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),

          /// price and add to cart session
          Padding(
            padding: const EdgeInsets.only(left: k5SP),
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
