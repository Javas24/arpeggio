import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/styles/shadow.dart';
import 'package:arpeggio/widgets/product_title_text.dart';
import 'package:arpeggio/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpProductCards extends StatelessWidget {
  const ArpProductCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        boxShadow: [ArpShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ArpSizes.productImageRadius),
        color: ArpColors.white,
      ),
      child: Column(
        children: [
          ArpRoundedContainer(
            height: 290,
            padding: const EdgeInsets.all(12),
            backgroundColor: ArpColors.arpGradient,
            child: Stack(
              children: [
                const Center(
                  child:
                      Image(image: AssetImage('assets/product/product_1.png')),
                ),
                Container(
                  width: 70,
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: ArpSizes.sm, vertical: ArpSizes.xs),
                  child: const Image(
                      image: AssetImage('assets/brand logo/gibson.png')),
                )
              ],
            ),
          ),
          const SizedBox(height: ArpSizes.spaceBtwItems / 2),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArpProductTitleText(
                  title: "Les Paul Standard '60s",
                ),
                const SizedBox(),
                Row(
                  children: [
                    Text(
                      'IDR 32.500.000',
                      style: GoogleFonts.getFont('Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: ArpColors.orange),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
