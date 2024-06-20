import 'package:flutter/material.dart';

class ArpBottomTambahProduk extends StatelessWidget {
  const ArpBottomTambahProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        backgroundColor: Colors.green,
        label: const Text('Tambahkan ke keranjang'),
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
  }
}
