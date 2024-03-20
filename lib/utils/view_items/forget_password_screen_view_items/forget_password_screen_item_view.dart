import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/string.dart';
import 'forget_password_screen_views.dart';

class ForgetPasswordItemsView extends StatelessWidget {
  const ForgetPasswordItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kAppBarHeight,
        left: kDefaultSpace,
        right: kDefaultSpace,
        bottom: kDefaultSpace,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// back btn session
          // const BackBtnView(),
          const Gap(k20SP * 2),

          /// forget password title text session
          Text(
            kForgetPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(k20SP),

          /// forget password subtitle text session
          Text(
            kForgetPasswordSubTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const Gap(k20SP * 2.5),

          /// input email to reset email session
          const ForgetPasswordEmailInputView(),
          const Gap(k20SP),

          ///submit btn session
          const SubmitBtnView(),
        ],
      ),
    );
  }
}
