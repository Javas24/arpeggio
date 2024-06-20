import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpRoundedIcon extends StatelessWidget {
  const ArpRoundedIcon(
      {super.key,
      this.width,
      this.height,
      this.size = ArpSizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
