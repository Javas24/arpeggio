import 'package:arpeggio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpMenuTile extends StatelessWidget {
  const ArpMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onPressed,
  });

  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: ArpColors.orange),
      title: Text(
        title,
        style: GoogleFonts.getFont('Poppins',
            fontWeight: FontWeight.w500, fontSize: 18),
      ),
      trailing: trailing,
      onTap: onPressed,
    );
  }
}
