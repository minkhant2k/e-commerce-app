import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';

class CustomGridViewWidget extends StatelessWidget {
  const CustomGridViewWidget({
    super.key,
    required this.itemCount,
    this.mainAxisEvent = kGridViewDefaultMainAxisEvent,
    required this.itemBuilder,
    this.mainSpacing,
    this.crossSpacing,
    this.crossAxisCount = 2,
  });
  final int itemCount, crossAxisCount;

  final double? mainAxisEvent, mainSpacing, crossSpacing;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: crossSpacing ?? k20SP,
        mainAxisSpacing: mainSpacing ?? k20SP,
        crossAxisCount: crossAxisCount,
        mainAxisExtent: mainAxisEvent,
      ),
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itemBuilder,
    );
  }
}
