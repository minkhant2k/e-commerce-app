import 'package:flutter/material.dart';

import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/widgets/animation_widget.dart';
import '../../../../constant/string.dart';
import '../../views/screens/account_created_success_screen.dart';

class ResendEmailBtnView extends StatelessWidget {
  const ResendEmailBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(onPressed: () {}, child: const Text(kResendEmail)),
    );
  }
}

class ContinueBtnView extends StatelessWidget {
  const ContinueBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.next(
            const AccountCreatedSuccessScreen(),
          );
        },
        child: const Text(kContinueText),
      ),
    );
  }
}

class WaitingForEmailConfirmationTextView extends StatelessWidget {
  const WaitingForEmailConfirmationTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      kComfrimEmailText2,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}

class ContactEmailView extends StatelessWidget {
  const ContactEmailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      kComfrimEmailText1,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}

class VerifyEmailTitleView extends StatelessWidget {
  const VerifyEmailTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      kComfrimEmailText,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class VerifyEmailAnimationView extends StatelessWidget {
  const VerifyEmailAnimationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimationWidget(
        width: KHelperFunctions.screenWidth(context),
        height: KHelperFunctions.screenHeight(context) * 0.35,
        animationPath: kEmailVerifactionAnimation,
      ),
    );
  }
}
