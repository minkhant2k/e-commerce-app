import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/providers/home_page_provider.dart';
import 'package:k_shop/utils/helper/functions.dart';

import '../../../../constant/string.dart';
import '../../../../widgets/cart_and_categories/category_widget.dart';
import '../../../../widgets/circular/search_container_widget.dart';
import '../../../../widgets/custom/custom_app_bar_widget.dart';
import '../../../../widgets/header_double_curved_widget.dart';
import '../../../../widgets/shop_icon_widget.dart';

class HomePageTopView extends StatelessWidget {
  const HomePageTopView({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    final curveHeight = h <= kDefaultScreenHeight ? h * k05SP : h * k04SP;
    return HeaderDoubleCurvedWidget(
      h: curveHeight,
      w: w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// app bar view
          const HomeAppBarView(),
          const Gap(kHomePageHorizontalSpace),

          ///search box and filter view
          SearchBarAndFilterView(w: w),
          const Gap(kHomePageHorizontalSpace),

          /// categories text and categories list view
          const CategoriesView(),
        ],
      ),
    );
  }
}

/// title text, user name and badges session
class HomeAppBarView extends StatelessWidget {
  const HomeAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: k05SP, right: k12SP),
      child: Selector<HomePageProvider, AdvancedDrawerController>(
        selector: (_, notifier) => notifier.drawerController,
        builder: (_, controller, __) {
          return CustomAppBarWidget(
            titleWidget: IconButton(
              icon: const Icon(Iconsax.setting_4),
              onPressed: () {
                final instance = context.read<HomePageProvider>();
                instance.openDrawer();
              },
            ),
            actions: const [
              ShopIconWithBadgeWidget(),
            ],
          );
        },
      ),
    );
  }
}
//Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               kAppBarTitleText,
//               style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                     color: darkMode
//                         ? kHomeAppBarTextDarkModeColor
//                         : kHomeAppBarTextLightModeColor,
//                   ),
//             ),
//             Text(
//               kUserName,
//               style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                     color: darkMode
//                         ? Colors.purple.shade100
//                         : kHomeAppBarTextLightModeColor,
//                   ),
//             )
//           ],
//         )

/// search bar and filter session
class SearchBarAndFilterView extends StatelessWidget {
  const SearchBarAndFilterView({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: k20SP, right: k12SP),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SearchContainerWidget(
              w: w,
              text: kHomeSearchText,
              icon: Iconsax.search_normal,
            ),
          ),
          const Gap(k16SP),
          const FilterView(),
        ],
      ),
    );
  }
}

class FilterView extends StatelessWidget {
  const FilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.filter),
          iconSize: k28IS,
        ),
        Text(
          kFilterText,
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}

/// categories session
class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Category Title Text session
        Padding(
          padding: const EdgeInsets.only(left: k20SP, bottom: k16SP),
          child: Text(
            kCategoriesText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),

        ///Categories List session
        const CategoriesListView(),
      ],
    );
  }
}

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Selector<HomePageProvider, List<String>>(
        selector: (_, notifier) => notifier.categories,
        builder: (_, categories, __) {
          return SizedBox(
            height: k60SP,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              padding:
                  const EdgeInsets.symmetric(vertical: k5SP, horizontal: k10SP),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: CategoryWidget(
                    // width: kCategoryWidth,
                    categoryName: categories[index],
                    backgroundColor: darkMode
                        ? kHomeCategoryBgDarkModeColor
                        : kHomeCategoryBgLightModeColor,
                    margin: const EdgeInsets.symmetric(
                        horizontal: k8SP, vertical: k5SP),
                    padding: const EdgeInsets.symmetric(
                        horizontal: k14SP, vertical: k2SP),
                  ),
                );
              },
            ),
          );
        });
  }
}
