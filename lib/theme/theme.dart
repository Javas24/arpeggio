import 'package:arpeggio/theme/widget_themes/appbar_theme.dart';
import 'package:arpeggio/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:arpeggio/theme/widget_themes/checkbox_theme.dart';
import 'package:arpeggio/theme/widget_themes/chip_theme.dart';
import 'package:arpeggio/theme/widget_themes/elevated_button_theme.dart';
import 'package:arpeggio/theme/widget_themes/outlined_button_theme.dart';
import 'package:arpeggio/theme/widget_themes/text_field_theme.dart';
import 'package:arpeggio/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class ArpAppTheme {
  ArpAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    disabledColor: ArpColors.grey,
    brightness: Brightness.light,
    primaryColor: ArpColors.primary,
    textTheme: ArpTextTheme.lightTextTheme,
    chipTheme: ArpChipTheme.lightChipTheme,
    scaffoldBackgroundColor: ArpColors.white,
    appBarTheme: ArpAppBarTheme.lightAppBarTheme,
    checkboxTheme: ArpCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ArpBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ArpElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ArpOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ArpTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    disabledColor: ArpColors.grey,
    brightness: Brightness.dark,
    primaryColor: ArpColors.primary,
    textTheme: ArpTextTheme.darkTextTheme,
    chipTheme: ArpChipTheme.darkChipTheme,
    scaffoldBackgroundColor: ArpColors.black,
    appBarTheme: ArpAppBarTheme.darkAppBarTheme,
    checkboxTheme: ArpCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ArpBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ArpElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ArpOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ArpTextFormFieldTheme.darkInputDecorationTheme,
  );
}
