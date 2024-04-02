import 'package:flutter/material.dart';

import 'package:k_shop/utils/views/pages/profile_page.dart';
import 'package:k_shop/utils/views/pages/shop_page.dart';
import 'package:k_shop/utils/views/pages/wish_list_page.dart';
import '../utils/views/pages/home_page.dart';

class MainScreenProvider extends ChangeNotifier {
  bool _isDispose = false;
  int _currentIndex = 0;
  final List<Widget> pages = [
    const HomePage(),
    const ShopPage(),
    const WishListPage(),
    const ProfilePage(),
  ];

  int get currentIndex => _currentIndex;
  void newIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    if (!_isDispose) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _isDispose = true;
  }
}
