import 'package:flutter/material.dart';

import '../../constant/dimens.dart';

class CircularImageWidget extends StatelessWidget {
  final String imagePath;
  final double width, height, borderRadius;
  final bool isNetworkImage;
  final bool applyRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final Color bgColor;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;

  const CircularImageWidget({
    super.key,
    this.width = double.infinity,
    this.height = kCarouselSliderImageHeight,
    this.isNetworkImage = false,
    this.fit = BoxFit.fill,
    this.borderRadius = kDefaultRadius,
    this.bgColor = Colors.black12,
    this.applyRadius = true,
    this.border,
    this.onTap,
    this.padding,
    required this.imagePath, this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: bgColor,
          border: border,
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: isNetworkImage
              ? Image.network(imagePath, fit: fit)
              : Image.asset(imagePath, fit: fit),
        ),
      ),
    );
  }
}
