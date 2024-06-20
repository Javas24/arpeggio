import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/widgets/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ArpUserProfileTile extends StatelessWidget {
  const ArpUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ArpCircularImage(
        image: ArpImage.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Javas Aryadinata',
          style: GoogleFonts.getFont('Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: ArpColors.white)),
      subtitle: Text('javasaryadinata24@gmail.com',
          style: GoogleFonts.getFont('Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ArpColors.white)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: ArpColors.white,
        ),
      ),
    );
  }
}
