import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool _isDispose = false;
  bool _isRememberMe = true;
  var startScreen = "Login_screen";

  get isRememberMe => _isRememberMe;
  void isCheck() {
    _isRememberMe = !isRememberMe;
    notifyListeners();
  }

  void createAccount() {
    startScreen = "sign_up_screen";
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
