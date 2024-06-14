import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpProductTitleText extends StatelessWidget {
  const ArpProductTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
    this.fontWeight = FontWeight.w500,
  });

  final String title;
  final int maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.getFont('Inter', fontWeight: fontWeight, fontSize: 12),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
