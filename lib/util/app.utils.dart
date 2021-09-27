import 'package:flutter/material.dart';

class AppUtils {
  static showAlert(BuildContext context, {@required String message}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(message),
      ));
  }
}
