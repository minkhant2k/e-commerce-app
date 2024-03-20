class KValidation {
  KValidation._();
  static final _singleton = KValidation._();
  factory KValidation() => _singleton;

  ///email validation
  static String? emailValidation(String? text) {
    if (text == null && text!.isEmpty) {
      return "Email is required";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(text)) {
      return "Invalid Email Address";
    }
    return null;
  }

  /// password validation
  static String? passwordValidation(String? text) {
    if (text == null && text!.isEmpty) {
      return "Password is required";
    }
    if (text.length < 6) {
      return "Password must be at least 6 characters long.";
    }
    final isCheckForUpperCaseLetters = text.contains(RegExp(r'[A-Z]'));
    if (!isCheckForUpperCaseLetters) {
      return "Password must contain at least one UpperCase letter";
    }
    final isCheckForSpecialChar = text.contains(RegExp(r'[0-9]'));
    if (!isCheckForSpecialChar) {
      return "Password must contain at least one number";
    }

    return null;
  }

  /// phone number validation
  static String? phoneNumberValidation(String? text) {
    if (text == null && text!.isEmpty) {
      return "Phone number is required";
    }

    /// myanmar phone number regExp validation that start with +95
    // final phoneRegex = RegExp(r'^\+?95\d{9}$');

    final phoneNumberRegExp = RegExp(r'^\d(11)$');
    if (!phoneNumberRegExp.hasMatch(text)) {
      return "Invalid phone number format (11 digits required)";
    }

    return null;
  }
}
