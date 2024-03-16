import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KHelperFormatter {
  KHelperFormatter._();
  static String formatDate(DateTime? time) {
    final dateFormat = DateFormat("dd-MMM-yyyy");
    final dateTime = dateFormat.format(time ?? DateTime.now());
    return dateTime;
  }

  static String formatCurrency(double amount) {
    final currencyFormat =
        NumberFormat.currency(locale: "my_MM", symbol: 'MMK');
    String currency = NumberFormat('#,###').format(currencyFormat);
    return currency;
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 9) {
      final formatPhoneNumber = "(+959) $phoneNumber";
      return formatPhoneNumber;
    }
    if (phoneNumber.length == 11) {
      final formatPhoneNumber = "(+959) ${phoneNumber.substring(2, 11)}";
      return formatPhoneNumber;
    }
    return phoneNumber;
  }

  static Color? getColour(String color) {
    if (color == "red") {
      return Colors.red;
    }
    if (color == "green") {
      return Colors.green;
    }
    if (color == "grey") {
      return Colors.grey;
    }
    if (color == "purple") {
      return Colors.purple;
    }
    if (color == "white") {
      return Colors.white;
    }
    if (color == "black") {
      return Colors.black;
    }
    if (color == "orange") {
      return Colors.orange;
    }
    if (color == "yellow") {
      return Colors.yellow;
    }
    if (color == "blue") {
      return Colors.blue;
    }
    return null;
  }
}
