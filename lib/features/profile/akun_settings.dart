import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/features/profile/about/main2.dart';
import 'package:arpeggio/features/profile/header_profil.dart';
import 'package:arpeggio/features/profile/profile_screen.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/menu_tile.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:arpeggio/widgets/user_profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AkunSettings extends StatelessWidget {
  const AkunSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArpHeaderProfil(
                child: Column(
              children: [
                ArpAppbar(
                  title: Text(
                    'Akun',
                    style: GoogleFonts.getFont('Poppins'),
                  ),
                ),
                ArpUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(ArpSizes.defaultSpace),
              child: Column(
                children: [
                  // Pengaturan Akun
                  const ArpSectionHeading(
                      title: "Pengaturan Akun", showActionButton: false),
                  const SizedBox(height: ArpSizes.spaceBtwSections),
                  const ArpMenuTile(icon: Iconsax.safe_home, title: 'Alamat'),
                  const ArpMenuTile(
                      icon: Iconsax.shopping_cart, title: 'Keranjang'),
                  const ArpMenuTile(icon: Iconsax.bag_tick, title: 'Pesanan'),
                  const ArpMenuTile(
                      icon: Iconsax.notification, title: 'Notifikasi'),
                  ArpMenuTile(
                    icon: Iconsax.security_card,
                    title: 'About Us',
                    onPressed: () => Get.to(() => const ProfilApp()),
                  ),
                  // Pengaturan Aplikasi
                  const SizedBox(height: ArpSizes.spaceBtwSections),
                  const ArpSectionHeading(
                      title: "Pengaturan Aplikasi", showActionButton: false),
                  const SizedBox(height: ArpSizes.spaceBtwSections),
                  const ArpMenuTile(
                      icon: Iconsax.document_upload, title: "Load Data"),
                  ArpMenuTile(
                    icon: Iconsax.location,
                    title: "Lokasi",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ArpMenuTile(
                    icon: Iconsax.image,
                    title: "Gambar HD",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  // LogOut Button
                  const SizedBox(height: ArpSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('LogOut')),
                  ),
                  const SizedBox(height: ArpSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
