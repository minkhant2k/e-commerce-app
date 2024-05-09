import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/widgets/custom/custom_app_bar_widget.dart';

import '../../../../constant/dimens.dart';
import '../../../../widgets/cart_and_categories/fav_cart_widget.dart';
import '../screens/main_screen.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        leadingWidth: k5SP,
        titleWidget: const Text(kWishlistText),
        actions: [
          IconButton(
            onPressed: () {
              context.next(
                const MainScreen(),
              );
            },
            icon: const Icon(Iconsax.add),
          ),
          const Gap(k15SP),
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(vertical: kDefaultSpace - 10),
        separatorBuilder: (context, index) => const Gap(kDefaultSpace - 10),
        itemBuilder: (context, index) {
          return const FavCartWidget();
        },
      ),
    );
  }
}
