import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import 'package:k_shop/constant/path_constant.dart';
import 'package:k_shop/constant/string.dart';
import 'package:k_shop/widgets/divider_widget.dart';
import 'package:k_shop/widgets/text_form_field_widget.dart';
import 'package:k_shop/widgets/animation_widget.dart';
import '../../../constant/dimens.dart';
import 'package:k_shop/utils/helper/extension.dart';

import '../../../widgets/image_logo_widget.dart';
import '../../views/screens/email_verfication_screen.dart';

///check box, Privacy and Terms Of Use Session
class CheckBoxPPAndTOUView extends StatelessWidget {
  const CheckBoxPPAndTOUView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: k24IS,
          height: k24IS,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const Gap(k20SP),
        RichText(
          text: TextSpan(
            // style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                  text: kIAgreeToText,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: kPrivacyPolicyText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
              ),
              TextSpan(
                  text: kAndText, style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: kTermsOfUseText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///Password Session
class PasswordView extends StatelessWidget {
  const PasswordView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      prefixIcon: Iconsax.password_check,
      suffixIcon: Iconsax.eye_slash,
      label: kPasswordText,
    );
  }
}

///PhoneNumber Session
class PhoneNumberView extends StatelessWidget {
  const PhoneNumberView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      prefixIcon: Iconsax.call,
      suffixIcon: null,
      label: kPhoneNumberText,
      isPhoneNumber: true,
    );
  }
}

///Email Session
class EmailView extends StatelessWidget {
  const EmailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      prefixIcon: Iconsax.direct,
      suffixIcon: null,
      label: kEmailText,
      isEmail: true,
    );
  }
}

///User Name Session
class UserNameView extends StatelessWidget {
  const UserNameView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFormFieldWidget(
      suffixIcon: null,
      label: kUserNameText,
      prefixIcon: Iconsax.user_edit,
    );
  }
}

/// First Name and Last Name Session
class FNameAndLastNameView extends StatelessWidget {
  const FNameAndLastNameView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          child: TextFormFieldWidget(
            prefixIcon: null,
            suffixIcon: null,
            label: kFNameText,
          ),
        ),
        Gap(k20SP),
        Flexible(
          child: TextFormFieldWidget(
            prefixIcon: null,
            suffixIcon: null,
            label: kLNameText,
          ),
        ),
      ],
    );
  }
}

/// Let's Create Your Account Text session
class DividerAndCreateAccountTextView extends StatelessWidget {
  const DividerAndCreateAccountTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DividerWidget(
      widget: Text(
        kSignUpText,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}

/// lottie animation session
class WelcomeAnimationView extends StatelessWidget {
  const WelcomeAnimationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AnimationWidget(
          width: kLoginAnimation2Width,
          height: kLoginAnimation2Height,
          animationPath: kWelcomeAnimation2),
    );
  }
}

/// create account btn session
class CreateAccountBtnView extends StatelessWidget {
  const CreateAccountBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.next(const EmailVerifactionScreen());
        },
        child: const Text("Create Account"),
      ),
    );
  }
}

/// already have and account , Login session
class BackToLoginBtnView extends StatelessWidget {
  const BackToLoginBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {
            context.back();
          },
          child: Text(
            kBackToLoginText,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

///or sign up with view
class OrSignUpWithTextView extends StatelessWidget {
  const OrSignUpWithTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DividerWidget(
      isSignUp: true,
      widget: Text(
        kOrSignUpWithText,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}

/// FaceBook and Google Image Logo session
class FbAndGoogleLogoView extends StatelessWidget {
  const FbAndGoogleLogoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageLogoWidget(
          imageLogo: kFaceBookLogoPath,
        ),
        Gap(k50SP),
        ImageLogoWidget(
          imageLogo: kGoogleLogoPath,
        ),
      ],
    );
  }
}
