import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:k_shop/constant/dimens.dart';

import 'login_screen_views.dart';

class LoginScreenItemView extends StatelessWidget {
  const LoginScreenItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: kAppBarHeight,
          bottom: kDefaultSpace,
          left: kDefaultSpace,
          right: kDefaultSpace,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///animation session
            LoginWelcomeAnimationView(),

            ///login label session
            LoginLabelTextView(),
            Gap(k30SP),

            /// login form session
            Form(
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
