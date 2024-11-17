import 'package:flutter/material.dart';

class MyButtonStyle {
  static ButtonStyle buttonStylePage1 = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.lightBlue,
    minimumSize: const Size(100, 70),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
