import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/providers/shop_page_provider.dart';
import 'package:k_shop/widgets/custom/custom_app_bar_widget.dart';
import 'package:provider/provider.dart';

import '../../../../constant/string.dart';
import '../../../../widgets/shop_icon_widget.dart';
import '../../view_items/shop_page_view_items/shop_page_view_items.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ShopPageProvider>(
      create: (_) => ShopPageProvider(),
      child: const DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CustomAppBarWidget(
            leadingWidth: k5SP,
            titleWidget: Text(kStoreText),
            actions: [
              ShopIconWithBadgeWidget(),
              Gap(k15SP),
            ],
          ),
          body: ShopPageItemsViews(),
        ),
      ),
    );
  }
}
