import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
  });

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 62,
        left: 22,
        right: 22,
      ),
      child: Container(
        width: ArpDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ArpSizes.sm),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(ArpSizes.cardRadiusLg),
            border: Border.all(color: Colors.white38),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(6, 4),
                blurRadius: 16,
              )
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                icon,
                color: ArpColors.darkerGrey,
              ),
            ),
            const SizedBox(
              width: ArpSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: const TextStyle(color: ArpColors.darkerGrey),
            ),
          ],
        ),
      ),
    );
  }
}
