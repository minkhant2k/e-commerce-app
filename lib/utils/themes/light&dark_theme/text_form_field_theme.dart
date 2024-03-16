import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/themes/light&dark_theme/app_style.dart';

import '../../../constant/colors.dart';

class KTextFormFieldTheme {
  KTextFormFieldTheme._();

  static final lightTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: kTextFieldPrefixIconColor,
    suffixIconColor: kTextFieldSuffixIconColor,
    labelStyle: appStyle(k14FS, FontWeight.normal, color: Colors.black),
    hintStyle: appStyle(k14FS, FontWeight.normal, color: Colors.black),
    errorStyle: appStyle(k12FS, FontWeight.normal, color: Colors.red),
    floatingLabelStyle: appStyle(
      k14FS,
      FontWeight.normal,
      color: Colors.black.withOpacity(k08),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  /// --dark theme
  static final darkTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: kTextFieldPrefixIconColor,
    suffixIconColor: kTextFieldSuffixIconColor,
    labelStyle: appStyle(k14FS, FontWeight.normal, color: Colors.white),
    hintStyle: appStyle(k14FS, FontWeight.normal, color: Colors.white),
    errorStyle: appStyle(k12FS, FontWeight.normal, color: Colors.red),
    floatingLabelStyle: appStyle(
      k14FS,
      FontWeight.normal,
      color: Colors.white.withOpacity(k08),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.white12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(k14SP),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
