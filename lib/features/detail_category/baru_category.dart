import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/grid_layout_product.dart';
import 'package:arpeggio/widgets/product_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpBaruCategoryScreen extends StatelessWidget {
  const ArpBaruCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArpAppbar(
        title: Text(
          'Baru',
          style: GoogleFonts.getFont('Poppins'),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              ArpGridLayoutProduct(
                  itemCount: 10,
                  itemBuilder: (_, index) => const ArpProductCards())
            ],
          ),
        ),
      ),
    );
  }
}

class ArpGridLayout {}
