import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/features/home/header.dart';
import 'package:arpeggio/widgets/brand_cards.dart';
import 'package:arpeggio/widgets/grid_layout.dart';
import 'package:arpeggio/widgets/product_cards.dart';
import 'package:arpeggio/widgets/promo_carousel.dart';
import 'package:arpeggio/widgets/search_container.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ArpHeader(
              child: Column(
                children: [
                  SearchContainer(
                    text: 'Cari Gitar Terbaikmu',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 24, bottom: 24),
              child: Column(
                children: [
                  const PromoCarousel(),
                  const SizedBox(height: ArpSizes.spaceBtwItems),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 8),
                        child: ArpSectionHeading(
                            title: 'Populer', onPressed: () {}),
                      ),
                      const SizedBox(height: 0),
                      SizedBox(
                        height: 368,
                        child: ListView.separated(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 8),
                          itemBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 12,
                              left: 8,
                            ),
                            child: ArpProductCards(),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: ArpSizes.spaceBtwItems),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 8),
                        child:
                            ArpSectionHeading(title: 'Baru', onPressed: () {}),
                      ),
                      const SizedBox(height: 0),
                      SizedBox(
                        height: 368,
                        child: ListView.separated(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 8),
                          itemBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 12,
                              left: 8,
                            ),
                            child: ArpProductCards(),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: ArpSizes.spaceBtwItems),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 8),
                        child:
                            ArpSectionHeading(title: 'Brand', onPressed: () {}),
                      ),
                      const SizedBox(height: 0),
                      ArpGridLayout(
                          itemCount: 10,
                          itemBuilder: (_, index) => const ArpBrandCards())
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
