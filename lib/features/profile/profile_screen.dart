import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/circular_image.dart';
import 'package:arpeggio/widgets/profile_menu.dart';
import 'package:arpeggio/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArpAppbar(
        showBackArrow: true,
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const ArpCircularImage(
                          image: ArpImage.user, width: 80, height: 80),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Ubah Gambar Profil')),
                    ],
                  )),
              const SizedBox(height: ArpSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              const ArpSectionHeading(
                  title: 'Informasi Profil', showActionButton: false),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              ArpProfileMenu(
                  title: 'Nama', value: 'Javas Aryadinata', onPressed: () {}),
              ArpProfileMenu(
                  title: 'Username', value: 'javas_24', onPressed: () {}),
              const SizedBox(height: ArpSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              const ArpSectionHeading(
                  title: 'Informasi Personal', showActionButton: false),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              ArpProfileMenu(
                  title: 'ID Pengguna',
                  value: '22082010057',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              ArpProfileMenu(
                  title: 'Email',
                  value: 'javasaryadinata24@gmail.com',
                  onPressed: () {}),
              ArpProfileMenu(
                  title: 'Telepon', value: '+63 89697557919', onPressed: () {}),
              ArpProfileMenu(title: 'Gender', value: 'Pria', onPressed: () {}),
              ArpProfileMenu(
                  title: 'Tanggal Lahir',
                  value: '24 Maret 2004',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Hapus Akun',
                      style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
