import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpSectionHeading extends StatelessWidget {
  const ArpSectionHeading(
      {super.key,
      this.textColor,
      this.showActionButton = true,
      required this.title,
      this.buttonTitle = 'Lihat Semua',
      this.onPressed,
      this.fontSize});

  final Color? textColor;
  final double? fontSize;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: GoogleFonts.getFont('Poppins',
                fontSize: fontSize, fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
