import 'package:arpeggio/widgets/rounded_container.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpBillingPayment extends StatelessWidget {
  const ArpBillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArpSectionHeading(
            title: 'Metode Pembayaran',
            fontSize: 14,
            buttonTitle: 'Ubah',
            onPressed: () {}),
        const SizedBox(height: 4),
        Row(
          children: [
            ArpRoundedContainer(
              width: 60,
              height: 22,
              padding: const EdgeInsets.all(2),
              child: Text('Paypal',
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w400)),
            ),
          ],
        )
      ],
    );
  }
}
