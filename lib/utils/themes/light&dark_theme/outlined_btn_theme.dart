import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/themes/light&dark_theme/app_style.dart';

class KOutLinedBtnTheme {
  KOutLinedBtnTheme._();

  ///light theme
  static final lightOutLinedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.purple.shade100),
      textStyle: appStyle(k16FS, FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: k16SP, horizontal: k20SP),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(k14SP),
      ),
    ),
  );

  ///dark theme
  static final darkOutLinedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.purple.shade100),
      textStyle: appStyle(k16FS, FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: k16SP, horizontal: k20SP),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(k14SP),
      ),
    ),
  );
}
