import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/widgets/welcome_animation_widget.dart';

import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/image_path_constant.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/utils/view_items/login_screen_view_items/login_screen_views.dart';

class LoginScreenItemView extends StatelessWidget {
  const LoginScreenItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: kAppBarHeight,
          bottom: kDefaultSpace,
          left: kDefaultSpace,
          right: kDefaultSpace,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WelcomeAnimationWidget(
              width: kLoginAnimation1Width,
              height: kLoginAnimation1Height,
              animationPath: kWelcomeAnimation1,
            ),
            Text(
              kLoginText.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Gap(k30SP),
            const Form(
              child: Column(
                children: [
                  ///email session
                  EmailView(),
                  Gap(k20SP),

                  /// password session
                  PasswordView(),

                  /// remember me & forget password session
                  RememberMeAndForgetPasswordView(),
                  Gap(k25SP),

                  /// Login Btn
                  LoginBtnView(),
                  Gap(k20SP),

                  /// Create Acc btn
                  CreateAccountBtnView(),

                  /// or  login with other
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
