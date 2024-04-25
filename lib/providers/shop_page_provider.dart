import 'package:flutter/material.dart';

import '../constant/path_constant.dart';

class ShopPageProvider extends ChangeNotifier {
  bool _isDispose = false;

  ///brands
  final List<Map<String, String>> _brands = [
    {
      "imagePath": kNikeLogoPath,
      "brandName": "Nike",
    },
    {
      "imagePath": kAdidasLogoPath,
      "brandName": "Adidas",
    },
    {
      "imagePath": kGucciLogoPath,
      "brandName": "Gucci",
    },
    {
      "imagePath": kJordanLogoPath,
      "brandName": "Jordan",
    },
  ];

  List<Map<String, String>> get allBrands => _brands;

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
