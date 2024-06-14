import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class ArpOutlinedButtonTheme {
  ArpOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ArpColors.dark,
      side: const BorderSide(color: ArpColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: ArpColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: ArpSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ArpSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ArpColors.light,
      side: const BorderSide(color: ArpColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: ArpColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: ArpSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ArpSizes.buttonRadius)),
    ),
  );
}
