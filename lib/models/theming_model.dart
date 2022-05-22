import 'package:flutter/material.dart';

class Theming {
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final Color? iconColor;
  final Color? disabledIconColor;

  Theming({
    this.textStyle,
    this.buttonStyle,
    this.iconColor,
    this.disabledIconColor,
  });

  Theming copyWith({
    TextStyle? textStyle,
    ButtonStyle? buttonStyle,
    Color? iconColor,
    Color? disabledIconColor,
  }) {
    return Theming(
      textStyle: textStyle ?? this.textStyle,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      iconColor: iconColor ?? this.iconColor,
      disabledIconColor: disabledIconColor ?? this.disabledIconColor,
    );
  }
}
