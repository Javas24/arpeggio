import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/features/checkout/checkout.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArpAppbar(title: Text('Keranjang')),
      body: const Padding(
        padding: EdgeInsets.all(ArpSizes.defaultSpace),
        child: ArpCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: 12,
        ),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout Rp 32.000.000')),
      ),
    );
  }
}
