import 'package:flutter/material.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';

import 'app_style.dart';

class AppTextTheme {
  AppTextTheme._();

  ///for light text theme
  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge:
        appStyle(k32FS, FontWeight.bold, color: kTextColorForLightTheme),
    headlineMedium:
        appStyle(k24FS, FontWeight.w600, color: kTextColorForLightTheme),
    headlineSmall:
        appStyle(k18FS, FontWeight.w600, color: kTextColorForLightTheme),
    titleLarge:
        appStyle(k16FS, FontWeight.w600, color: kTextColorForLightTheme),
    titleMedium:
        appStyle(k16FS, FontWeight.w500, color: kTextColorForLightTheme),
    titleSmall:
        appStyle(k16FS, FontWeight.w400, color: kTextColorForLightTheme),
    bodyLarge: appStyle(k14FS, FontWeight.w500, color: kTextColorForLightTheme),
    bodyMedium:
        appStyle(k14FS, FontWeight.normal, color: kTextColorForLightTheme),
    bodySmall: appStyle(k14FS, FontWeight.w500, color: kTextColorForLightTheme),
    labelLarge:
        appStyle(k12FS, FontWeight.normal, color: kTextColorForLightTheme),
    labelMedium: appStyle(k12FS, FontWeight.normal,
        color: kTextColorForLightTheme.withOpacity(k05)),
  );

  ///for dark text theme
  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge:
        appStyle(k32FS, FontWeight.bold, color: kTextColorForDarkTheme),
    headlineMedium:
        appStyle(k24FS, FontWeight.w600, color: kTextColorForDarkTheme),
    headlineSmall:
        appStyle(k18FS, FontWeight.w600, color: kTextColorForDarkTheme),
    titleLarge: appStyle(k16FS, FontWeight.w600, color: kTextColorForDarkTheme),
    titleMedium:
        appStyle(k16FS, FontWeight.w500, color: kTextColorForDarkTheme),
    titleSmall: appStyle(k16FS, FontWeight.w400, color: kTextColorForDarkTheme),
    bodyLarge: appStyle(k14FS, FontWeight.w500, color: kTextColorForDarkTheme),
    bodyMedium:
        appStyle(k14FS, FontWeight.normal, color: kTextColorForDarkTheme),
    bodySmall: appStyle(k14FS, FontWeight.w500, color: kTextColorForDarkTheme),
    labelLarge:
        appStyle(k12FS, FontWeight.normal, color: kTextColorForDarkTheme),
    labelMedium: appStyle(k12FS, FontWeight.normal,
        color: kTextColorForDarkTheme.withOpacity(k05)),
  );
}
