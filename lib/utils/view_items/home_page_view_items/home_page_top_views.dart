import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/custom_curve_widget.dart';

import '../../../constant/string.dart';
import '../../../widgets/category_widget.dart';
import '../../../widgets/custom_app_bar_widget.dart';
import '../../../widgets/search_container_widget.dart';

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
    return CurveView(
      h: h,
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

/// double curve container session
class CurveView extends StatelessWidget {
  const CurveView({
    super.key,
    required this.h,
    required this.w,
    this.child,
  });

  final double h;
  final double w;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    final curveHeight = h * k04SP;
    return CustomCurveWidget(
      child: Container(
        height: curveHeight,
        width: w,
        color: darkMode ? kCurveBgColor1DarkMode : kCurveBgColor1LightMode,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            /*
             Positioned(
              right: s.width / k2SP,
              top: k100SP,
              child: CircularContainerWidget(
                bgColor: darkMode ? kCurveDarkMode : kCurveLightMode,
              ),
            ),
            Positioned(
              right: s.width / k2SP,
              top: -k170SP,
              child: CircularContainerWidget(
                bgColor: darkMode ? kCurveDarkMode : kCurveLightMode,
              ),
            ),
             */
            /// to get shade
            CustomCurveWidget(
              child: Container(
                height: curveHeight - 18,
                width: w,
                color:
                    darkMode ? kCurveBgColorDarkMode : kCurveBgColorLightMode,
                padding: EdgeInsets.zero,
              ),
            ),
            child ?? const SizedBox(),
          ],
        ),
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
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(top: k05SP, left: k6SP, right: k12SP),
      child: CustomAppBarWidget(
        titleWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kAppBarTitleText,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: darkMode
                        ? kHomeAppBarTextDarkModeColor
                        : kHomeAppBarTextLightModeColor,
                  ),
            ),
            Text(
              kUserName,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: darkMode
                        ? Colors.purple.shade100
                        : kHomeAppBarTextLightModeColor,
                  ),
            )
          ],
        ),
        actions: const [
          ShopIconView(),
        ],
      ),
    );
  }
}

class ShopIconView extends StatelessWidget {
  const ShopIconView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -4, end: 1),
      showBadge: true,
      badgeContent: Text(
        '2',
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Colors.white),
      ),
      badgeAnimation: const badges.BadgeAnimation.scale(
        animationDuration: Duration(seconds: 1),
        colorChangeAnimationDuration: Duration(seconds: 1),
        loopAnimation: false,
        curve: Curves.fastOutSlowIn,
        colorChangeAnimationCurve: Curves.easeInCubic,
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: Colors.black,
        padding: const EdgeInsets.all(5),
        borderRadius: BorderRadius.circular(5),
        elevation: 0,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.shopping_bag),
      ),
    );
  }
}

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
    return SizedBox(
      height: k60SP,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        padding: const EdgeInsets.symmetric(vertical: k5SP, horizontal: k10SP),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: const CategoryWidget(),
          );
        },
      ),
    );
  }
}
