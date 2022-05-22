import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class CustomTheme {
  static const Color primaryColor = Color(0xFF3474E0);
  static const Color secondaryColor = Color(0xFFEE8B60);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color redColor = Color(0xFFE45F35);
  static const Color greenColor = Color(0xFF30B28C);
  static const Color yellowColor = Color(0xFFFDC24F);
  static const Color blueColor = Color(0xFF1F3D8B);
  static const Color purpleColor = Color(0xFF9F73E6);

  static const Map<int, Color> neutral = {
    1: Color(0xFFFFFFFF),
    2: Color(0xFFFCFCF9),
    3: Color(0xFFF7F7F0),
    4: Color(0xFFE7E7E1),
    5: Color(0xFF7F8596),
    6: Color(0xFF494E5B),
    7: Color(0xFF31343F),
    8: Color(0xFF22252D),
    9: Color(0xFF1F2128),
  };

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';

  static TextStyle get base1 => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
}
