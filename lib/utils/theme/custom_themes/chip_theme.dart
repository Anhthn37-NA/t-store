import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  /// -- Light Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  /// -- Dark Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.darkerGrey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
