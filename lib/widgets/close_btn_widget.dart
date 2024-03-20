import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/// back to previous screen , close btn session
class CloseBtnWidget extends StatelessWidget {
  final void Function()? onPressed;
  const CloseBtnWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        top: 18,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.close_circle,
          size: 32,
        ),
      ),
    );
  }
}
