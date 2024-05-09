import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/providers/shop_page_provider.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:provider/provider.dart';

import '../../../../constant/dimens.dart';
import '../../../../constant/string.dart';
import '../../../../widgets/brand/brand_widget.dart';
import '../../../../widgets/circular/search_container_widget.dart';
import '../../../../widgets/title_and_view_all_widget.dart';

///search box session
class SearchItemsView extends StatelessWidget {
  const SearchItemsView({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPaddingForShopPage,
      child: SearchContainerWidget(
        w: w,
        text: kSearchInStoreText,
        icon: Iconsax.search_normal,
        showBgColor: true,
      ),
    );
  }
}

/// popular brands session
class PopularBrandItemsView extends StatelessWidget {
  const PopularBrandItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: kDefaultPaddingForShopPage,
          child: TitleAndViewAllWidget(
            isOnlyShowCategory: true,
            categoryText: kBrandsText,
            onTap: () {},
          ),
        ),
        const BrandsView(),
      ],
    );
  }
}

class BrandsView extends StatelessWidget {
  const BrandsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = KHelperFunctions.screenWidth(context);
    return Selector<ShopPageProvider, List<Map<String, String>>>(
      selector: (_, notifier) => notifier.allBrands,
      builder: (_, brands, __) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: kDefaultPaddingForShopPage,
          child: Row(
            children: [
              for (int i = 0; i < brands.length; i++)
                BrandWidget(
                  width: w * 0.43,
                  height: null,
                  margin: const EdgeInsets.only(
                    right: k15SP,
                  ),
                  logoPath: brands[i]['imagePath'].toString(),
                  brandName: brands[i]['brandName'].toString(),
                  borderColor: Colors.grey.withOpacity(0.3),
                ),
            ],
          ),
        );
      },
    );
  }
}
