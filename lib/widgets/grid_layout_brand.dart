import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpGridLayoutBrand extends StatelessWidget {
  const ArpGridLayoutBrand(
      {super.key,
      required this.itemCount,
      this.mainAxisExtent = 112,
      required this.itemBuilder});

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: ArpSizes.gridViewSpacing,
        crossAxisSpacing: ArpSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
