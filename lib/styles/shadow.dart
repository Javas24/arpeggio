import 'package:arpeggio/constants/colors.dart';
import 'package:flutter/material.dart';

class ArpShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: ArpColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
