import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ArpChipTheme {
  ArpChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ArpColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ArpColors.black),
    selectedColor: ArpColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ArpColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ArpColors.darkerGrey,
    labelStyle: TextStyle(color: ArpColors.white),
    selectedColor: ArpColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ArpColors.white,
  );
}
