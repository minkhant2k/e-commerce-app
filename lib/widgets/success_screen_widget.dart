import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:k_shop/widgets/animation_widget.dart';
import '../constant/dimens.dart';
import '../utils/helper/functions.dart';

class SuccessScreenWidget extends StatelessWidget {
  final bool isAnimation;
  final String imagePath, title, subtitle, btnText;
  final void Function()? onPressed;
  final EdgeInsets padding;
  final Widget? widget;

  const SuccessScreenWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      this.isAnimation = false,
      this.onPressed,
      required this.btnText,
      required this.padding,
      this.widget});

  @override
  Widget build(BuildContext context) {
    final width = KHelperFunctions.screenWidth(context);
    final height = KHelperFunctions.screenHeight(context) * 0.4;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /// animation or image session
              isAnimation
                  ? AnimationWidget(
                      width: width, height: height, animationPath: imagePath)
                  : Image.asset(width: width, height: height, imagePath),

              /// title session
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Gap(k20SP),

              ///subTitle session
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const Gap(k40SP),

              /// btn session
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(btnText),
                ),
              ),
              const Gap(k20SP),
              widget ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
