import 'package:flutter/material.dart';
import 'package:k_shop/utils/view_items/main_screen_view_items/main_screen_items_view.dart';
import 'package:provider/provider.dart';

import 'package:k_shop/providers/main_screen_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainScreenProvider>(
      create: (_) => MainScreenProvider(),
      child: Scaffold(
        bottomNavigationBar: const BottomNavBarItemView(),
        body: Consumer<MainScreenProvider>(
          builder: (_, mainScreen, __) {
            /// using index stack to store page state what we left before
            return IndexedStack(
              index: mainScreen.currentIndex,
              children: mainScreen.pages,
            );
          },
        ),
      ),
    );
  }
}
