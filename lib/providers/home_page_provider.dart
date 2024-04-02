import 'package:flutter/material.dart';

import '../constant/path_constant.dart';

class HomePageProvider extends ChangeNotifier {
  bool _isDispose = false;
  int _indicatorIndex = 0;

  int get indicatorIndex => _indicatorIndex;

  void newIndex(int index) {
    _indicatorIndex = index;
    notifyListeners();
  }

  ///carousel slider images
  final List<String> images = [
    kCarouselImage1Path,
    kCarouselImage2Path,
    kCarouselImage3Path,
    kCarouselImage4Path
  ];

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
