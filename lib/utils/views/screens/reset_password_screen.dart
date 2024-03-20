import 'package:flutter/material.dart';
import 'package:k_shop/constant/dimens.dart';
import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/widgets/success_screen_widget.dart';

import '../../../widgets/close_btn_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CloseBtnWidget(
            onPressed: () => context.back(),
          )
        ],
      ),
      body: SuccessScreenWidget(
        padding: const EdgeInsets.all(kDefaultSpace),
        isAnimation: true,
        imagePath: kEmailVerifactionAnimation,
        title: kResetPasswordTitle,
        subtitle: kResetPasswordSubtitle,
        btnText: kDoneText,
        onPressed: () {},
        widget: SizedBox(
            width: double.infinity,
            child:
                TextButton(onPressed: () {}, child: const Text(kResendEmail))),
      ),
    );
  }
}
