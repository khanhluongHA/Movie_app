import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static var primaryColor = const Color(0xff4E4376);
  static var secondaryColor = const Color(0xff2B5876);
  static String baseUrl = 'phimapi.com';
  static Gradient dotGradient = const LinearGradient(
    colors: [
      Color(0xff64ABDB),
      Color(0xff826EC8),
    ],
  );
  static final Color dotColor = _getColorFromGradient(dotGradient);
  static Color _getColorFromGradient(Gradient gradient) {
    gradient.createShader(
      const Rect.fromLTWH(0, 0, 1, 1),
    );
    return Colors.transparent.withOpacity(0.0);
  }

  static Gradient dotGradientExtra = LinearGradient(
    colors: [
      const Color(0xff826EC8).withOpacity(.3),
      const Color(0xff64ABDB).withOpacity(.3),
    ],
  );
  static final Color dotColors = _getColorFromGradientExtra(dotGradientExtra);
  static Color _getColorFromGradientExtra(Gradient gradient) {
    gradient.createShader(const Rect.fromLTWH(0, 0, 1, 1));
    return Colors.transparent.withOpacity(0.0);
  }
}
