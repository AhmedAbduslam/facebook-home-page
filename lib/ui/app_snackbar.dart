import 'package:flutter/material.dart';

class AppSnackBar {
  static void show(BuildContext context, String content) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(content)));
  }
}
