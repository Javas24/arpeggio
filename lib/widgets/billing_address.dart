import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpBillingAddress extends StatelessWidget {
  const ArpBillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArpSectionHeading(
            title: 'Pengiriman', buttonTitle: 'Ubah', onPressed: () {}),
        Text('Javas Aryadinata',
            style: GoogleFonts.getFont('Poppins', fontWeight: FontWeight.w400)),
        const SizedBox(height: ArpSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: ArpSizes.spaceBtwItems),
            Text('+62 89697557919',
                style: GoogleFonts.getFont('Poppins',
                    fontWeight: FontWeight.w400, fontSize: 10)),
          ],
        ),
        const SizedBox(height: ArpSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: ArpSizes.spaceBtwItems),
            Expanded(
              child: Text('Sidokerto, Buduran, Sidoarjo',
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w400, fontSize: 10)),
            ),
          ],
        ),
      ],
    );
  }
}
