import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/rounded_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ArpProductQuantity extends StatelessWidget {
  const ArpProductQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ArpRoundedIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ArpSizes.md,
          color: ArpColors.darkerGrey,
          backgroundColor: ArpColors.grey,
        ),
        const SizedBox(
            height: ArpSizes.spaceBtwItems),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12),
          child: Text('2',
              style: GoogleFonts.getFont('Poppins',
                  fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
            height: ArpSizes.spaceBtwItems),
        const ArpRoundedIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ArpSizes.md,
          color: ArpColors.white,
          backgroundColor: ArpColors.primary,
        ),
      ],
    );
  }
}
