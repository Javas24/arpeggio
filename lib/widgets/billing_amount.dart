import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpBillingAmount extends StatelessWidget {
  const ArpBillingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal'),
            Text('Rp. 32.000.000'),
          ],
        ),
        SizedBox(height: ArpSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pengiriman'),
            Text('Rp. 17.000'),
          ],
        ),
        SizedBox(height: ArpSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total'),
            Text('Rp. 17.000'),
          ],
        ),
      ],
    );
  }
}
