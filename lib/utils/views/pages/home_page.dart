import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/providers/home_page_provider.dart';
import 'package:k_shop/utils/helper/functions.dart';

import 'package:k_shop/utils/view_items/home_page_view_items/home_page_item_views.dart';
import 'package:provider/provider.dart';

import '../../../constant/colors.dart';
import '../../view_items/home_page_view_items/drawer_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return ChangeNotifierProvider<HomePageProvider>(
      create: (_) => HomePageProvider(),
      child: Selector<HomePageProvider, AdvancedDrawerController>(
        selector: (_, notifier) => notifier.drawerController,
        builder: (_, drawerController, __) {
          return AdvancedDrawer(
            openRatio: 0.55,
            openScale: 0.75,
            backdropColor: !darkMode ? kDarkMode : kLightMode,
            controller: drawerController,
            animationDuration: const Duration(milliseconds: 500),
            drawer: CustomDrawer(
              drawerController: drawerController,
            ),
            childDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
            child: const Scaffold(
              body: HomePageItemsView(),
            ),
          );
        },
      ),
    );
  }
}
