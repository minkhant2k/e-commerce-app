import 'package:flutter/material.dart';

import '../../constant/dimens.dart';
import '../circular/circular_container_widget.dart';

class PopularProductImageWidget extends StatelessWidget {
  final String image;
  const PopularProductImageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CircularContainerWidget(
        showBorder: false,
        bgColor: Colors.grey.withOpacity(0.2),
        height: 100,
        padding: const EdgeInsets.all(
          kDefaultPadding - 10,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        radius: 16,
        child: Image.asset(
          fit: BoxFit.contain,
          image,
        ),
      ),
    );
  }
}
