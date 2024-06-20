import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/features/cart/cart.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/product_image.dart';
import 'package:arpeggio/widgets/product_meta_data.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const ArpAppbar(showBackArrow: true, title: Text('Detail Produk')),
      // bottomNavigationBar: const Align(
      // alignment: Alignment.bottomCenter, child: ArpBottomTambahProduk()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImage(),
            const SizedBox(height: ArpSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 4, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ArpProductMetaData(),
                    ],
                  ),
                  const SizedBox(
                    height: ArpSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const CartScreen()),
                        child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: ArpSizes.spaceBtwSections,
                  ),
                  const ArpSectionHeading(
                      title: 'Deskripsi', showActionButton: false),
                  const SizedBox(
                    height: ArpSizes.spaceBtwItems / 2,
                  ),
                  const ReadMoreText(
                    "Les Paul™ Standard yang baru kembali ke desain klasik yang membuatnya relevan, dimainkan, dan dicintai membentuk suara lintas generasi dan genre musik.  Ini memberikan penghormatan kepada Era Keemasan inovasi Gibson dan menghidupkan kembali keaslian. Les Paul Standard '60s memiliki badan mahoni solid dengan top maple bertekstur AA dan leher mahoni bergaya SlimTaper™ tahun 60-an dengan fingerboard rosewood dan inlay trapesium. Dilengkapi dengan jembatan klasik ABR-1 Tune-O-Matic™, tailpiece Stop Bar aluminium, tuner Grover® Rotomatic® Kidney, dan tombol Top Hat emas dengan reflektor perak. Pickup 60s Burstbucker™ dilengkapi dengan magnet Alnico 5 dan dihubungkan ke potensiometer audio taper serta kapasitor Orange Drop®.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Baca selengkapnya',
                    trimExpandedText: ' Ringkas',
                    moreStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: ArpColors.orange),
                    lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: ArpColors.orange),
                  ),
                  const SizedBox(
                    height: ArpSizes.spaceBtwSections,
                  ),
                  const ArpSectionHeading(
                      title: 'Review', showActionButton: false),
                  const SizedBox(
                    height: ArpSizes.spaceBtwSections * 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: double.infinity,
          height: 42,
          child: FloatingActionButton.extended(
            elevation: 0,
            backgroundColor: Colors.green,
            label: Text('Tambahkan ke keranjang',
                style: GoogleFonts.getFont('Poppins',
                    fontWeight: FontWeight.w600, color: ArpColors.white)),
            onPressed: () => Get.to(() => const CartScreen()),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          ),
        ),
      ),
    );
  }
}
