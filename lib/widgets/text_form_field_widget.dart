import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_shop/utils/helper/functions.dart';

class TextFormFieldWidget extends StatelessWidget {
  final IconData? prefixIcon, suffixIcon;
  final String label;
  final bool isPhoneNumber;
  final bool isEmail;

  const TextFormFieldWidget({
    super.key,
    this.prefixIcon,
    required this.label,
    this.suffixIcon = Iconsax.eye_slash,
    this.isPhoneNumber = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    if (prefixIcon == null && suffixIcon == null) {
      ///no icon show just use for text field only
      return TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hoverColor: Colors.purple.shade300,
          labelStyle:
              TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
      );
    }

    /// icon show with text field
    return TextFormField(
      keyboardType: isEmail
          ? TextInputType.emailAddress
          : isPhoneNumber
              ? TextInputType.number
              : TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: Icon(
          suffixIcon,
        ),
        prefixIcon: Icon(
          prefixIcon,
        ),
        labelText: label,
        hoverColor: Colors.purple.shade300,
        labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      ),
    );
  }
}
