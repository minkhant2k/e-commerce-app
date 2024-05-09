import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:k_shop/constant/dimens.dart';
import 'email_verifaction_views.dart';

/// email verifaction Item views
class EmailVerifactionScreenItemViews extends StatelessWidget {
  const EmailVerifactionScreenItemViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(kDefaultSpace),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// email animation
            VerifyEmailAnimationView(),

            /// verify email title text session
            VerifyEmailTitleView(),
            Gap(k20SP),

            /// contact gmail session
            ContactEmailView(),
            Gap(k20SP),

            /// await email verify text session 3
            WaitingForEmailConfirmationTextView(),
            Gap(k20SP),

            /// continue btn session
            ContinueBtnView(),
            Gap(k20SP),

            ///resend email btn session
            ResendEmailBtnView(),
          ],
        ),
      ),
    );
  }
}
