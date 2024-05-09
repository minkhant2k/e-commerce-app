import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/providers/main_screen_provider.dart';
import 'package:provider/provider.dart';

///bottom nav bar session
class BottomNavBarItemView extends StatelessWidget {
  const BottomNavBarItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<MainScreenProvider, int>(
      selector: (_, pages) => pages.currentIndex,
      builder: (_, index, __) {
        return BottomNavigationBar(
          iconSize: 26,
          onTap: (index) {
            final instance = context.read<MainScreenProvider>();
            instance.newIndex(index);
          },
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          elevation: k00ROE,
          selectedItemColor: kBotNavBarSelectItemColor,
          unselectedItemColor: kBotNavBarUnselectItemColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(index == 0 ? Iconsax.home_14 : Iconsax.home_2),
              label: kHomeText,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  index == 1 ? Iconsax.shopping_cart5 : Iconsax.shopping_cart),
              label: kShopText,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                index == 2 ? Iconsax.heart5 : Iconsax.heart,
              ),
              label: kWishlistText,
            ),
            BottomNavigationBarItem(
              icon: Icon(index == 3 ? Iconsax.user_square : Iconsax.user),
              label: kProfileText,
            ),
          ],
        );
      },
    );
  }
}
