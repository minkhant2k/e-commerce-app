import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/widgets/cart_and_categories/cart_widget.dart';
import 'package:provider/provider.dart';

import '../../../constant/dimens.dart';
import '../../../constant/string.dart';
import '../../../providers/home_page_provider.dart';
import '../../../widgets/title_and_view_all_widget.dart';
import '../../../widgets/circular/circular_img_widget.dart';
import '../../../widgets/circular/circular_container_widget.dart';
import '../../../widgets/custom/custom_grid_view_widget.dart';

/// carousel slider and dot indicator session
class CarouselSliderAndDotIndicatorView extends StatelessWidget {
  const CarouselSliderAndDotIndicatorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: k25SP),
      child: Consumer<HomePageProvider>(
        builder: (_, notifier, __) {
          return Column(
            children: [
              /// carousel slider images session
              CarouselSliderImagesView(
                notifier: notifier,
              ),
              const Gap(k15SP),

              ///dot indicator session
              DotIndicatorView(
                notifier: notifier,
              ),
            ],
          );
        },
      ),
    );
  }
}

class CarouselSliderImagesView extends StatelessWidget {
  final HomePageProvider notifier;
  const CarouselSliderImagesView({
    super.key,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        onPageChanged: (index, _) => notifier.newIndex(index),
      ),
      items: [
        for (int i = 0; i < notifier.carouselImages.length; i++)
          CircularImageWidget(
            fit: (i == 1 || i == 2) ? BoxFit.cover : BoxFit.fill,
            imagePath: notifier.carouselImages[i],
          ),
      ],
    );
  }
}

class DotIndicatorView extends StatelessWidget {
  final HomePageProvider notifier;
  const DotIndicatorView({
    super.key,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < notifier.carouselImages.length; i++)
          CircularContainerWidget(
            margin: const EdgeInsets.only(right: k10SP),
            width: k10SP,
            height: k10SP,
            radius: k5ROE,
            bgColor: notifier.indicatorIndex == i ? Colors.purple : Colors.grey,
            showBorder: false,
          )
      ],
    );
  }
}

class CategoryAndCartView extends StatelessWidget {
  const CategoryAndCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleAndViewAllWidget(
          categoryText: kNewArrivalText,
        ),
        const Gap(15),
        CustomGridViewWidget(
          itemCount: 4,
          itemBuilder: (_, index) => const CartWidget(
            imagePadding: EdgeInsets.all(kDefaultPadding - 10),
          ),
        ),
      ],
    );
  }
}
