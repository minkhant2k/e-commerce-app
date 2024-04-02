import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:k_shop/constant/string.dart';
import 'package:k_shop/providers/login_provider.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/utils/helper/functions.dart';
import 'package:k_shop/utils/views/screens/sign_up_screen.dart';
import 'package:k_shop/widgets/text_form_field_widget.dart';
import 'package:provider/provider.dart';
import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/widgets/animation_widget.dart';
import '../../../constant/dimens.dart';
import '../../views/screens/main_screen.dart';
import '../../views/screens/forget_password_screen.dart';

class LoginLabelTextView extends StatelessWidget {
  const LoginLabelTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      kLoginText.toUpperCase(),
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}

class LoginWelcomeAnimationView extends StatelessWidget {
  const LoginWelcomeAnimationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AnimationWidget(
      width: kLoginAnimation1Width,
      height: kLoginAnimation1Height,
      animationPath: kWelcomeAnimation1,
    );
  }
}

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

            ///forget password btn session
            TextButton(
              onPressed: () => context.next(
                const ForgetPasswordScreen(),
              ),
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
          builder: (_) => const SignUpScreen(),
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
        onPressed: () => context.next(
          const MainScreen(),
        ),
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
