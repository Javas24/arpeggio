import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ArpAppBarTheme{
  ArpAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ArpColors.black, size: ArpSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ArpColors.black, size: ArpSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ArpColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ArpColors.black, size: ArpSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ArpColors.white, size: ArpSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ArpColors.white),
  );
}