import 'package:flutter/material.dart';

class AppColors {
  static const Color faceBlue = Color(0xFF1877f2);
  static const Color online = Color(0xFF4BCB1F);
  static const Color blueGrey = Color(0xFFdfe3ee);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}

class StyleText {
  static const bodyText = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
}
