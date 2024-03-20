import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/utils/view_items/sign_up_screen_view_items/sign_up_screen_views.dart';
import '../../../constant/dimens.dart';

class SignUpScreenItemsView extends StatelessWidget {
  const SignUpScreenItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: kAppBarHeight,
            left: kDefaultSpace,
            right: kDefaultSpace,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// lottie animation session
              WelcomeAnimationView(),
              Gap(k10SP),

              /// Let's Create Your Account Text session
              DividerAndCreateAccountTextView(),
              Gap(k30SP),

              /// First Name and Last Name Session
              FNameAndLastNameView(),
              Gap(k20SP),

              ///User Name Session
              UserNameView(),
              Gap(k20SP),

              ///Email Session
              EmailView(),
              Gap(k20SP),

              ///PhoneNumber Session
              PhoneNumberView(),
              Gap(k20SP),

              ///Password Session
              PasswordView(),
              Gap(k20SP),

              ///check box, Privacy and Terms Of Use Session
              CheckBoxPPAndTOUView(),
              Gap(k20SP),

              CreateAccountBtnView(),
              Gap(k20SP),

              /// already have and account , Login session
              BackToLoginBtnView(),
              Gap(k30SP),

              ///or sign up with view
              OrSignUpWithTextView(),
              Gap(k30SP),

              /// FaceBook and Google Image Logo session
              FbAndGoogleLogoView()
            ],
          ),
        ),
      ),
    );
  }
}
