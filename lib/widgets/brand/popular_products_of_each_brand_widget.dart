import 'package:flutter/material.dart';

import '../../constant/dimens.dart';
import 'popular_product_image_widget.dart';
import 'brand_widget.dart';
import '../circular/circular_container_widget.dart';

class Popular3ProductsOfEachBrandWidget extends StatelessWidget {
  const Popular3ProductsOfEachBrandWidget({
    super.key,
    required this.images,
    required this.brandName,
    required this.brandLogo,
  });
  final String brandName, brandLogo;

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CircularContainerWidget(
      showBorder: true,
      padding: const EdgeInsets.all(kDefaultPadding - 10),
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      radius: kDefaultRadius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BrandWidget(
            borderColor: Colors.transparent,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              right: k15SP,
            ),
            logoPath: brandLogo,
            brandName: brandName,
          ),
          Padding(
            padding: const EdgeInsets.only(top: k5SP, bottom: k10SP),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: images
                  .map((image) => PopularProductImageWidget(
                        image: image,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
