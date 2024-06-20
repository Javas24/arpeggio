import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ArpColors.light,
      child: Stack(
        children: [
          const SizedBox(
              height: 600,
              child: Padding(
                padding: EdgeInsets.all(ArpSizes.productImageRadius * 2),
                child: Center(
                    child: Image(
                        image: AssetImage('assets/product/product_1.png'))),
              )),
          Container(
            width: 162,
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(
                horizontal: ArpSizes.sm, vertical: ArpSizes.xs),
            child:
                const Image(image: AssetImage('assets/brand logo/gibson.png')),
          )
        ],
      ),
    );
  }
}
