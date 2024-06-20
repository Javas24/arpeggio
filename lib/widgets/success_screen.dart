import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/styles/spacing_style.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});

  final String image, title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ArpSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(image), width: 260),
              const SizedBox(height: ArpSizes.spaceBtwSections),
              // Title
              Text(title, textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(ArpTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
