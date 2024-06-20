import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/product_price_text.dart';
import 'package:arpeggio/widgets/product_quantity.dart';
import 'package:arpeggio/widgets/product_title_text.dart';
import 'package:arpeggio/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

class ArpCartItems extends StatelessWidget {
  const ArpCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) =>
          const SizedBox(height: ArpSizes.spaceBtwSections),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          Row(
            children: [
              ArpRoundedImage(
                imageUrl: ArpImage.product1,
                width: 84,
                height: 192,
                padding: const EdgeInsets.all(ArpSizes.sm),
                backgroundColor: Colors.transparent,
                border: Border.all(color: ArpColors.orange, width: 2),
              ),
              const SizedBox(height: ArpSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  width: 262,
                  height: 192,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: ArpColors.orange, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: const Image(
                              image:
                                  AssetImage('assets/brand logo/gibson.png')),
                        ),
                        const ArpProductTitleText(
                          title: "Les Paul Standard '60s",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        const ArpProductPriceText(
                            title: 'Rp. 32.000.000',
                            fontWeight: FontWeight.w600),
                        const SizedBox(height: ArpSizes.spaceBtwItems),
                        const ArpProductQuantity()
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
