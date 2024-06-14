import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/features/home/header.dart';
import 'package:arpeggio/widgets/product_cards.dart';
import 'package:arpeggio/widgets/promo_carousel.dart';
import 'package:arpeggio/widgets/search_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArpHeader(
              child: Column(
                children: [
                  SearchContainer(
                    text: 'Cari Gitar Terbaikmu',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 0, top: 24, bottom: 24),
              child: Column(
                children: [
                  PromoCarousel(),
                  SizedBox(height: ArpSizes.spaceBtwSections),
                  ArpProductCards(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
