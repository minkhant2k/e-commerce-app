import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/utils/helper/functions.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? titleWidget;
  final bool showBackArrow, centerTitle;
  final double? leadingWidth;
  final List<Widget>? actions;
  final Function()? onPressed;
  final IconData? leadingIcon;

  const CustomAppBarWidget({
    super.key,
    this.titleWidget,
    this.showBackArrow = false,
    this.actions,
    this.onPressed,
    this.leadingIcon,
    this.centerTitle = false,
    this.leadingWidth = k00SP,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(

      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => context.back(),
              icon: const Icon(Iconsax.arrow_left),
            )
          : IconButton(
              onPressed: onPressed,
              icon: Icon(leadingIcon),
            ),
      centerTitle: centerTitle,
      leadingWidth: leadingWidth,
      title: titleWidget,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        KHelperFunctions.getAppBarHeight(),
      );
}
/*
Padding(
      padding:
          const EdgeInsets.only(left: k12SP, right: k12SP, top: kAppBarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// leading
          showBackArrow
              ? IconButton(
                  onPressed: () => context.back(),
                  icon: const Icon(Iconsax.arrow_left),
                )
              : IconButton(
                  onPressed: onPressed,
                  icon: Icon(leadingIcon),
                ),

          ///title
          titleWidget ?? const SizedBox(),

          ///action
          Row(
            children: actions ?? [],
          ),
        ],
      ),
    )
*/
