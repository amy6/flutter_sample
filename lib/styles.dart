import 'package:flutter/material.dart';

class Style {
  static const _fontSizeTitle = 25.0;
  static const _fontSizeSummary = 16.0;
  static const _fontFamily = 'Muli';

  static final textHeaderTitle = TextStyle(
      fontSize: _fontSizeTitle,
      fontWeight: FontWeight.bold,
      color: _hexToColor('000000'),
      fontFamily: _fontFamily);

  static final textHeaderSummary = TextStyle(
      fontSize: _fontSizeSummary,
      color: _hexToColor('666666'),
      fontFamily: _fontFamily);

  static final navBarTitle = TextStyle(fontFamily: _fontFamily);

  static Color _hexToColor(String hexFormat) {
    return Color(int.parse(hexFormat.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
