import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ArpSizes.appBarHeight,
    left: ArpSizes.defaultSpace,
    bottom: ArpSizes.defaultSpace,
    right: ArpSizes.defaultSpace,
  );
}
