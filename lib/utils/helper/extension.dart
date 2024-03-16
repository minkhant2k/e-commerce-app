import 'package:flutter/material.dart';

/// extension for navigation
extension NavigateToScreen on BuildContext {
  void next(T, {Function? result}) async {
    var value = await Navigator.of(this).push(
      MaterialPageRoute(builder: (_) => T),
    );
    if (result != null) {
      result(value);
    }
  }

  void pushReplacement(T) async {
    await Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (_) => T),
    );
  }

  void back({var results}) {
    Navigator.of(
      this,
    ).pop(results);
  }
}
