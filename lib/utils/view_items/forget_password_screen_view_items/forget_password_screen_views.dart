import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/utils/helper/extension.dart';

import '../../../constant/string.dart';
import '../../../widgets/text_form_field_widget.dart';
import '../../views/screens/reset_password_screen.dart';

class SubmitBtnView extends StatelessWidget {
  const SubmitBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.next(
            const ResetPasswordScreen(),
          );
        },
        child: const Text("Submit"),
      ),
    );
  }
}

class ForgetPasswordEmailInputView extends StatelessWidget {
  const ForgetPasswordEmailInputView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      label: kInputEmailText,
      prefixIcon: Iconsax.direct_right,
      suffixIcon: null,
    );
  }
}

class BackBtnView extends StatelessWidget {
  const BackBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => context.back(),
      icon: const Icon(Iconsax.backward),
      label: const Text("back"),
    );
  }
}
