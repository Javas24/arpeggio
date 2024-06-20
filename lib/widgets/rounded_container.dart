import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpRoundedContainer extends StatelessWidget {
  const ArpRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = ArpSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = ArpColors.primary,
      this.backgroundColor,
      this.padding,
      this.margin,
      this.backgroundTransparent = Colors.transparent});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundTransparent;
  final Gradient? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          gradient: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
