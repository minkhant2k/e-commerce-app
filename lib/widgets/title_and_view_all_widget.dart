import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/string.dart';

import '../constant/dimens.dart';

class TitleAndViewAllWidget extends StatelessWidget {
  final String categoryText, subCategoryText;
  final void Function()? onTap;
  final bool isOnlyShowCategory;
  const TitleAndViewAllWidget({
    super.key,
    required this.categoryText,
    this.onTap,
    this.subCategoryText = kViewAllText,
    this.isOnlyShowCategory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryText,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Visibility(
          visible: !isOnlyShowCategory,
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  subCategoryText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Gap(k5SP),
                const Icon(Iconsax.arrow_right),
              ],
            ),
          ),
        )
      ],
    );
  }
}
