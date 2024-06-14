import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class ArpElevatedButtonTheme {
  ArpElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ArpColors.light,
      backgroundColor: ArpColors.orange,
      disabledForegroundColor: ArpColors.darkGrey,
      disabledBackgroundColor: ArpColors.buttonDisabled,
      side: const BorderSide(color: ArpColors.orange),
      padding: const EdgeInsets.symmetric(vertical: ArpSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ArpColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ArpSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ArpColors.light,
      backgroundColor: ArpColors.orange,
      disabledForegroundColor: ArpColors.darkGrey,
      disabledBackgroundColor: ArpColors.darkerGrey,
      side: const BorderSide(color: ArpColors.orange),
      padding: const EdgeInsets.symmetric(vertical: ArpSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ArpColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ArpSizes.buttonRadius)),
    ),
  );
}
