import 'package:flutter/material.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/utils/view_items/shop_page_view_items/shop_page_views.dart';

import '../../../constant/colors.dart';
import '../../../widgets/cart_and_categories/category_tab_bar_view_widget.dart';
import '../../../widgets/custom/custom_tab_bar_widget.dart';

class ShopPageItemsViews extends StatelessWidget {
  const ShopPageItemsViews({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        final darkMode = KHelperFunctions.isDarkMode(context);
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: h * 0.36,
            pinned: true,
            floating: true,
            backgroundColor: !darkMode ? kDarkMode : kLightMode,
            flexibleSpace: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SearchItemsView(w: w),
                BrandsAndViewAllItemsView(),
                const BrandsItemsView(),
              ],
            ),
            bottom: const CustomTabBarWidget(
              tabs: [
                Tab(
                  child: Text("Clothes"),
                ),
                Tab(
                  child: Text("Shoes"),
                ),
                Tab(
                  child: Text("Phones"),
                ),
                Tab(
                  child: Text("Laptops"),
                ),
                Tab(
                  child: Text("Electronics"),
                ),
              ],
            ),
          ),
        ];
      },
      body: const TabBarView(
        children: [
          /// categories items list
          CategoryTabBarViewWidget(),
          CategoryTabBarViewWidget(),
          CategoryTabBarViewWidget(),
          CategoryTabBarViewWidget(),
          CategoryTabBarViewWidget(),
        ],
      ),
    );
  }
}
