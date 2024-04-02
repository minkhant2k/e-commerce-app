import 'package:flutter/material.dart';
import 'package:k_shop/providers/home_page_provider.dart';

import 'package:k_shop/utils/view_items/home_page_view_items/home_page_item_views.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (_) => HomePageProvider(),
      child: const Scaffold(
        body: HomePageItemsView(),
      ),
    );
  }
}
