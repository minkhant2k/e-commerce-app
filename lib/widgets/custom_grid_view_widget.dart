import 'package:flutter/material.dart';

class CustomGridViewWidget extends StatelessWidget {
  const CustomGridViewWidget({
    super.key,
    required this.itemCount,
    this.mainAxisEvent = 230,
    required this.itemBuilder,
    this.mainSpaing,
    this.crossSpacing,
    this.crossAxisCount = 2,
  });
  final int itemCount, crossAxisCount;

  final double? mainAxisEvent, mainSpaing, crossSpacing;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: crossSpacing ?? 20,
        mainAxisSpacing: mainSpaing ?? 20,
        crossAxisCount: crossAxisCount,
        mainAxisExtent: mainAxisEvent,
      ),
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      shrinkWrap: true,
      itemBuilder: itemBuilder,
    );
  }
}
