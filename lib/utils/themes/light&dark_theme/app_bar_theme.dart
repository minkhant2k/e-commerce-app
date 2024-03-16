import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimens.dart';
import 'app_style.dart';

class KAppBarTheme {
  KAppBarTheme._();

  /// for light
  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: k24IS),
    actionsIconTheme: const IconThemeData(color: Colors.black, size: k24IS),
    titleTextStyle:
        appStyle(k18FS, FontWeight.w600, color: kAppBarColorForLightTheme),
  );

  /// for dark
  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: k24IS),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: k24IS),
    titleTextStyle:
        appStyle(k18FS, FontWeight.w600, color: kAppBarColorForDarkTheme),
  );
}
