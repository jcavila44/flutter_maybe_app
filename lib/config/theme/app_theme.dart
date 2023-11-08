import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF975AFA);

const List<Color> _colorThemes = [
  _customColor,
  Colors.deepPurpleAccent,
  Colors.lightGreenAccent,
  Colors.orangeAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0,
            'Colors must be between 0 and ${_colorThemes.length}'),
        assert(selectedColor < _colorThemes.length,
            'Colors must be minor than ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
