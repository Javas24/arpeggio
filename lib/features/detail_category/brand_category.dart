import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/brand_cards.dart';
import 'package:arpeggio/widgets/grid_layout_brand.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArpBrandCategoryScreen extends StatelessWidget {
  const ArpBrandCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArpAppbar(
        title: Text(
          'Brand',
          style: GoogleFonts.getFont('Poppins'),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              ArpGridLayoutBrand(
                  itemCount: 20,
                  itemBuilder: (_, index) => const ArpBrandCards())
            ],
          ),
        ),
      ),
    );
  }
}

class ArpGridLayout {}
