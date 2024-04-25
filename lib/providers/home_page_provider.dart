import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../constant/path_constant.dart';

class HomePageProvider extends ChangeNotifier {
  bool _isDispose = false;
  int _indicatorIndex = 0;
  final AdvancedDrawerController _drawerController = AdvancedDrawerController();

  int get indicatorIndex => _indicatorIndex;
  AdvancedDrawerController get drawerController => _drawerController;

  void newIndex(int index) {
    _indicatorIndex = index;
    notifyListeners();
  }

  void openDrawer() {
    _drawerController.showDrawer();
    notifyListeners();
  }

  ///categories
  final List<String> _categories = [
    "Android Phones",
    "Gaming Phones",
    "i Phone",
    "Mac Books",
    "Laptops",
    "Men Shoes",
    "Women Shoes",
    "Kid Shoes",
    "Men Clothes",
    "Women Clothes",
    "Kids Clothes",
    "Skin Care Products",
  ];

  ///carousel slider images
  final List<String> _images = [
    kCarouselImage1Path,
    kCarouselImage2Path,
    kCarouselImage3Path,
    kCarouselImage4Path,
  ];
  List<String> get carouselImages => _images;
  List<String> get categories => _categories;

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
