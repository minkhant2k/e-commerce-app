import 'package:flutter/material.dart';

import '../constant/dimens.dart';

class CircularContainerWidget extends StatelessWidget {
  final double? width, height, radius;

  final EdgeInsetsGeometry? padding, margin;
  final Color bgColor;
  final Widget? child;

  const CircularContainerWidget({
    super.key,
    this.width,
    this.height,
    this.radius = kCircularContainerRadius,
    this.padding,
    this.child,
    this.bgColor = Colors.transparent,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0),
        color: bgColor,
      ),
      child: child,
    );
  }
}
