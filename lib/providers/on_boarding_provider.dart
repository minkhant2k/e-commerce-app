import 'package:flutter/material.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/utils/views/screens/login_screen.dart';

class OnBoardingProvider extends ChangeNotifier {
  bool _isDispose = false;

  int _index = 0;
  final PageController _controller = PageController();

  get pageController => _controller;
  get currentPageIndex => _index;

  void newPageIndex(int index) {
    _index = index;
    _controller.jumpToPage(index);
    notifyListeners();
  }

  void nextPage(BuildContext context) {
    if (_index == 2) {
      context.next(const LoginScreen());
    } else {
      _index += 1;
      // print("this is page index when click next btn $_index");
      _controller.jumpToPage(_index);
    }
    notifyListeners();
  }

  void skipAllPage() {
    _index = 2;
    _controller.jumpToPage(2);
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
    _controller.dispose();
  }
}
