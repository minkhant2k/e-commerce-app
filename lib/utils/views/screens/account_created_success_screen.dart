import 'package:flutter/material.dart';

import '../../../constant/dimens.dart';
import '../../../constant/path_constant.dart';
import '../../../constant/string.dart';
import '../../../widgets/success_screen_widget.dart';

class AccountCreatedSuccessScreen extends StatelessWidget {
  const AccountCreatedSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SuccessScreenWidget(
      padding: const EdgeInsets.only(
            top: kAppBarHeight,
            left: kDefaultSpace,
            right: kDefaultSpace,
            bottom: kDefaultSpace,
          ) *
          2,
      imagePath: kEmailVerifiedAnimation,
      title: kAccountCreatedSuccessLabelText,
      subtitle: kAccountCreatedSuccessText,
      btnText: kContinueText,
      isAnimation: true,
      onPressed: () {},
    );
  }
}
