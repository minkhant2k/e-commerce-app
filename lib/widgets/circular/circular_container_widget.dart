import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/dimens.dart';

class CircularContainerWidget extends StatelessWidget {
  final double? width, height, radius;

  final EdgeInsetsGeometry? padding, margin;
  final Color bgColor;
  final Widget? child;
  final bool showBorder;
  final AlignmentGeometry? alignment;

  const CircularContainerWidget({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.child,
    this.bgColor = Colors.transparent,
    this.margin,
    required this.showBorder,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(
            color: showBorder
                ? kCircularContainerBorderColor
                : Colors.transparent),
        borderRadius: BorderRadius.circular(radius ?? kCircularContainerRadius),
        color: bgColor,
      ),
      child: child,
    );
  }
}
