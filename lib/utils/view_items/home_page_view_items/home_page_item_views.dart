import 'package:flutter/material.dart';

import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/utils/view_items/home_page_view_items/home_page_top_views.dart';
import 'home_page_body_views.dart';

class HomePageItemsView extends StatelessWidget {
  const HomePageItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = KHelperFunctions.screenWidth(context);
    final h = KHelperFunctions.screenHeight(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          ////top curve view
          HomePageTopView(h: h, w: w),

          ////body view

          // carousel slider view session
          const CarouselSliderAndDotIndicatorView(),

          // category and cart grid view session
          const Padding(
            padding: EdgeInsets.all(
              kDefaultPadding,
            ),
            child: CategoryAndCartView(),
          ),
        ],
      ),
    );
  }
}
