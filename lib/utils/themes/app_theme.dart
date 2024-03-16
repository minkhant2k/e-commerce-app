import 'package:flutter/material.dart';
import 'package:k_shop/utils/themes/light&dark_theme/bottom_sheet_theme.dart';
import 'package:k_shop/utils/themes/light&dark_theme/check_box_theme.dart';
import 'package:k_shop/utils/themes/light&dark_theme/chip_theme.dart';
import 'package:k_shop/utils/themes/light&dark_theme/outlined_btn_theme.dart';
import 'package:k_shop/utils/themes/light&dark_theme/text_form_field_theme.dart';

import 'light&dark_theme/app_bar_theme.dart';
import 'light&dark_theme/elevated_btn_theme.dart';
import 'light&dark_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  /// for Light AppTheme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: KChipTheme.lightChipTheme,
    elevatedButtonTheme: KElevatedBtnTheme.lightElevatedBtnTheme,
    outlinedButtonTheme: KOutLinedBtnTheme.lightOutLinedBtnTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightTextFormFieldTheme,
  );

  /// for Dark AppTheme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: KCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: KChipTheme.darkChipTheme,
    elevatedButtonTheme: KElevatedBtnTheme.darkElevatedBtnTheme,
    outlinedButtonTheme: KOutLinedBtnTheme.lightOutLinedBtnTheme,
    inputDecorationTheme: KTextFormFieldTheme.darkTextFormFieldTheme,
  );
}
