import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/navigation_bar.dart';
import 'package:arpeggio/widgets/appbar.dart';
import 'package:arpeggio/widgets/billing_address.dart';
import 'package:arpeggio/widgets/billing_amount.dart';
import 'package:arpeggio/widgets/billing_payment.dart';
import 'package:arpeggio/widgets/cart_items.dart';
import 'package:arpeggio/widgets/rounded_container.dart';
import 'package:arpeggio/widgets/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArpAppbar(showBackArrow: true, title: Text('Checkout')),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              ArpCartItems(),
              SizedBox(height: ArpSizes.defaultSpace),
              ArpRoundedContainer(
                padding: EdgeInsets.all(ArpSizes.md),
                showBorder: true,
                child: Column(
                  children: [
                    ArpBillingAmount(),
                    SizedBox(height: 6),
                    Divider(),
                    SizedBox(height: 2),
                    ArpBillingPayment(),
                    SizedBox(height: 2),
                    ArpBillingAddress(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: 12,
        ),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: ArpImage.success,
                  title: 'Terimakasih',
                  onPressed: () => Get.offAll(() => const ArpNavigationBar()),
                )),
            child: const Text('Checkout Rp 32.000.000')),
      ),
    );
  }
}
