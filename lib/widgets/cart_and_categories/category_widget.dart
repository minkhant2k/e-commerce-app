import 'package:flutter/material.dart';
import '../../constant/dimens.dart';

class CategoryWidget extends StatelessWidget {
  final double? height, width;
  final EdgeInsetsGeometry? margin, padding;
  final String categoryName;
  final Color backgroundColor;
  const CategoryWidget({
    super.key,
    this.height,
    this.width,
    this.categoryName = "default",
    this.margin,
    this.padding,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // final darkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(k20SP),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 6,
        //     spreadRadius: 2,
        //     offset: Offset(1, 1.5),
        //   ),
        //   BoxShadow(
        //     color: Colors.white10,
        //     blurRadius: 10,
        //     spreadRadius: 2,
        //     offset: Offset(-1, -2),
        //   ),
        // ],
      ),
      child: Text(categoryName, style: Theme.of(context).textTheme.labelLarge),
    );
  }
}
