import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/functions.dart';

class DividerWidget extends StatelessWidget {
  final Widget widget;
  final bool isSignUp;
  const DividerWidget({
    super.key,
    required this.widget,
    this.isSignUp = false,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: darkMode ? Colors.grey.shade300 : Colors.white54,
            thickness: kDividerThickness,
            indent: isSignUp ? kDividerMaxIndent : kDividerDefaultMaxIndent,
            endIndent: kDividerDefaultIndent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: k5SP),
          child: widget,
        ),
        Flexible(
          child: Divider(
            color: darkMode ? Colors.grey.shade300 : Colors.white54,
            thickness: kDividerThickness,
            indent: kDividerDefaultIndent,
            endIndent:
                isSignUp ? kDividerMaxEndIndent : kDividerDefaultMaxEndIndent,
          ),
        ),
      ],
    );
  }
}
