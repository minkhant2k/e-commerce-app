import 'package:flutter/material.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';

class KBottomSheetTheme {
  KBottomSheetTheme._();

  ///for light
  static final lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: kBottomSheetColorForLightTheme,
    modalBackgroundColor: kBottomSheetColorForLightTheme,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k16SP)),
  );

  ///for dark
  static final darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: kBottomSheetColorForDarkTheme,
    modalBackgroundColor: kBottomSheetColorForDarkTheme,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k16SP)),
  );
}
