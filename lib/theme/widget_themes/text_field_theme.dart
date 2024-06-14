import 'package:flutter/material.dart';
import 'package:arpeggio/constants/colors.dart';
import '../../constants/sizes.dart';

class ArpTextFormFieldTheme {
  ArpTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ArpColors.darkGrey,
    suffixIconColor: ArpColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ArpgSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ArpSizes.fontSizeMd, color: ArpColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ArpSizes.fontSizeSm, color: ArpColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ArpColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ArpColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ArpColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ArpColors.darkGrey,
    suffixIconColor: ArpColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ArpgSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ArpSizes.fontSizeMd, color: ArpColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ArpSizes.fontSizeSm, color: ArpColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ArpColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ArpColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ArpSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ArpColors.warning),
    ),
  );
}
