import 'package:flutter/material.dart';

import '../constant/dimens.dart';
import '../utils/helper/functions.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: k10SP),
      margin: const EdgeInsets.symmetric(horizontal: k8SP, vertical: k5SP),
      decoration: BoxDecoration(
        color: darkMode ? Colors.black54 : Colors.white54,
        borderRadius: BorderRadius.circular(k20SP),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(1, 1.5),
          ),
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(-1, -2),
          ),
        ],
      ),
      child: const Text(
        "sub category",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
