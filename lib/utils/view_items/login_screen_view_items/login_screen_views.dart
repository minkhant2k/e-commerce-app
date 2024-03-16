import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:k_shop/constant/string.dart';
import 'package:k_shop/providers/login_provider.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/utils/pages/create_account_screen.dart';
import 'package:k_shop/widgets/text_form_field_widget.dart';
import 'package:provider/provider.dart';

class RememberMeAndForgetPasswordView extends StatelessWidget {
  const RememberMeAndForgetPasswordView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<LoginProvider, bool>(
      selector: (_, notifier) => notifier.isRememberMe,
      builder: (_, isCheck, __) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      final instance = context.read<LoginProvider>();
                      instance.isCheck();
                    }),
                const Text(kRememberMeText),
              ],
            ),

            ///forget password
            TextButton(
              onPressed: () {},
              child: const Text(kForgetPasswordText),
            ),
          ],
        );
      },
    );
  }
}

class CreateAccountBtnView extends StatelessWidget {
  const CreateAccountBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void switchScreen() {
      // final instance = context.read<LoginProvider>();
      // instance.createAccount();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const CreateAccountScreen(),
        ),
      );
    }

    return Selector<LoginProvider, String>(
        selector: (_, screen) => screen.startScreen,
        builder: (_, screen, __) {
          return SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: switchScreen,
              child: Text(
                kCreateAccountText,
                style: TextStyle(
                    color: KHelperFunctions.isDarkMode(context)
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          );
        });
  }
}

class LoginBtnView extends StatelessWidget {
  const LoginBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(kLoginText),
      ),
    );
  }
}

class PasswordView extends StatelessWidget {
  const PasswordView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
        label: kPasswordText, prefixIcon: Iconsax.password_check);
  }
}

class EmailView extends StatelessWidget {
  const EmailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      prefixIcon: Iconsax.arrow_right,
      suffixIcon: null,
      label: kEmailText,
    );
  }
}
