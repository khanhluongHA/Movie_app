import 'package:flutter/material.dart';

class AppGradientColors {
  AppGradientColors._();
  static Gradient dotGradient = const LinearGradient(
    colors: [
      Color(0xff64ABDB),
      Color(0xff826EC8),
    ],
  );

  static const Gradient spread = LinearGradient(
    colors: [
      Colors.black,
      Colors.transparent,
    ],
  );

  static final Color dotColor = _getColorFromGradient(dotGradient);
  static Color _getColorFromGradient(Gradient gradient) {
    gradient.createShader(
      const Rect.fromLTWH(0, 0, 1, 1),
    );
    return Colors.transparent;
  }

  static const Gradient dotGradientExtra = LinearGradient(
    colors: [
      Color(0xff826EC8),
      Color(0xff64ABDB),
    ],
  );

  static final Color dotColors = _getColorFromGradientExtra(dotGradientExtra);
  static Color _getColorFromGradientExtra(Gradient gradient) {
    gradient.createShader(
      const Rect.fromLTWH(0, 0, 1, 1),
    );
    return Colors.transparent;
  }
}
