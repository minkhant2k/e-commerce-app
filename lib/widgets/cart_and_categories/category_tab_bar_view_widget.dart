import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/widgets/cart_and_categories/cart_widget.dart';
import 'package:k_shop/widgets/custom/custom_grid_view_widget.dart';
import 'package:k_shop/widgets/title_and_view_all_widget.dart';

import '../../constant/dimens.dart';
import '../../constant/path_constant.dart';
import '../brand/popular_products_of_each_brand_widget.dart';

class CategoryTabBarViewWidget extends StatelessWidget {
  const CategoryTabBarViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Popular3ProductsOfEachBrandWidget(
                brandName: "Adidas",
                brandLogo: kAdidasLogoPath,
                images: [
                  kNikeSportImg2Path,
                  kNikeSportImg2Path,
                  kNikeSportImg2Path
                ],
              ),
              const Popular3ProductsOfEachBrandWidget(
                brandName: "Nike",
                brandLogo: kNikeLogoPath,
                images: [
                  kNikeSportImg2Path,
                  kNikeSportImg2Path,
                  kNikeSportImg2Path
                ],
              ),
              const TitleAndViewAllWidget(
                categoryText: "You May Like",
              ),
              const Gap(kDefaultSpace),
              CustomGridViewWidget(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const CartWidget(
                    imageUrl: kNikeSportImg1Path,
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
