import 'package:flutter/material.dart';
import 'package:k_shop/utils/themes/light&dark_theme/app_style.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget({
    super.key,
    required this.text,
    this.color,
    this.fs,
    this.fw,
    this.textAlign = TextAlign.center,
    this.maxLine,
    this.overflow,
  });
  final TextOverflow? overflow;
  final String text;
  final Color? color;
  final double? fs;
  final FontWeight? fw;
  final TextAlign textAlign;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLine,
      style: appStyle(
        fs ?? 14,
        fw ?? FontWeight.normal,
        color: color,
      ),
    );
  }
}
