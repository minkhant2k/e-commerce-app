import 'package:flutter/material.dart';
import 'package:k_shop/constant/colors.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';

class DividerWidget extends StatelessWidget {
  final Widget? widget;
  final bool isSignUp;
  const DividerWidget({
    super.key,
    this.widget,
    this.isSignUp = false,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return widget == null
        ? Divider(
            color: darkMode ? kDividerDarkMode : kDividerLightMode,
            thickness: kDividerThickness,
            indent: 10,
            endIndent: 10,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Divider(
                  color: darkMode ? kDividerDarkMode : kDividerLightMode,
                  thickness: kDividerThickness,
                  indent:
                      isSignUp ? kDividerMaxIndent : kDividerDefaultMaxIndent,
                  endIndent: kDividerDefaultIndent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: k5SP),
                child: widget,
              ),
              Flexible(
                child: Divider(
                  color: darkMode ? kDividerDarkMode : kDividerLightMode,
                  thickness: kDividerThickness,
                  indent: kDividerDefaultIndent,
                  endIndent: isSignUp
                      ? kDividerMaxEndIndent
                      : kDividerDefaultMaxEndIndent,
                ),
              ),
            ],
          );
  }
}
