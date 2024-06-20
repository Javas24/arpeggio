import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/product_price_text.dart';
import 'package:arpeggio/widgets/product_title_text.dart';
import 'package:flutter/material.dart';

class ArpProductMetaData extends StatelessWidget {
  const ArpProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArpProductTitleText(
          title: "Les Paul Standard '60s",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          height: ArpSizes.spaceBtwItems / 4,
        ),
        Row(
          children: [
            ArpProductPriceText(
              title: 'Rp 32.000.000',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )
          ],
        ),
      ],
    );
  }
}
