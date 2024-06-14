import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

final ButtonStyle buttonLihat = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 36),
    backgroundColor: ArpColors.orange,
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ArpSizes.borderRadiusLg)));
