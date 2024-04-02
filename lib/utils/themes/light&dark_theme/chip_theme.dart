import 'package:flutter/material.dart';
import 'package:k_shop/utils/themes/light&dark_theme/app_style.dart';

import '../../../constant/dimens.dart';

class KChipTheme {
  KChipTheme._();

  ///for light
  static final lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(k04ROE),
    labelStyle: appStyle(k14FS, FontWeight.normal, color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: k12SP, vertical: k12SP),
    checkmarkColor: Colors.white,
    selectedColor: Colors.blue,
  );

  /// for dark
  static final darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: appStyle(k14FS, FontWeight.normal, color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: k12SP, vertical: k12SP),
    checkmarkColor: Colors.white,
    selectedColor: Colors.blue,
  );
}
