import 'package:arpeggio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpProductPriceText extends StatelessWidget {
  const ArpProductPriceText({
    super.key,
    required this.title,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
    this.fontWeight,
    this.fontSize,
    this.color = ArpColors.orange,
  });

  final String title;
  final int maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.getFont('Poppins',
          fontWeight: fontWeight, fontSize: fontSize, color: color),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
