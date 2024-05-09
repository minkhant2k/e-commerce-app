import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import '../utils/helper/functions.dart';
import 'custom/custom_curve_widget.dart';

/// double curve container session
class HeaderDoubleCurvedWidget extends StatelessWidget {
  const HeaderDoubleCurvedWidget({
    super.key,
    required this.h,
    required this.w,
    this.child,
  });

  final double h;
  final double w;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final darkMode = KHelperFunctions.isDarkMode(context);

    return CustomCurveWidget(
      child: Container(
        height: h,
        width: w,
        color: darkMode ? kPrimaryDarkColor : kPrimaryLightColor,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            /*
             Positioned(
              right: s.width / k2SP,
              top: k100SP,
              child: CircularContainerWidget(
                bgColor: darkMode ? kCurveDarkMode : kCurveLightMode,
              ),
            ),
            Positioned(
              right: s.width / k2SP,
              top: -k170SP,
              child: CircularContainerWidget(
                bgColor: darkMode ? kCurveDarkMode : kCurveLightMode,
              ),
            ),
             */
            /// to get shade
            CustomCurveWidget(
              child: Container(
                height: h - k15SP,
                width: w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: darkMode
                        ? [
                            const Color(0xFF990099).withOpacity(0.5),
                            const Color(0xFF000000),
                          ]
                        : [
                            const Color(0xFFffffff),
                            const Color(0xFF990099),
                          ],
                  ),
                ),
                padding: EdgeInsets.zero,
              ),
            ),
            child ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
