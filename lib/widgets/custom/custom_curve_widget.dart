import 'package:flutter/material.dart';

import 'custom_clip_path_widget.dart';

class CustomCurveWidget extends StatelessWidget {
  const CustomCurveWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPathWidget(),
      child: child,
    );
  }
}
