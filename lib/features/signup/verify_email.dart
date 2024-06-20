import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/features/signup/verify_email_controller.dart';
import 'package:arpeggio/helper/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(ArpImage.emailVerify),
                width: ArpHelperFunctions.screenWidth() * 0.6,
              ),
              // Title
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Text(ArpTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Text(email ?? '',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Text(ArpTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              // Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.checkEmailVerificationStatus(),
                      child: const Text(ArpTexts.tContinue))),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () => controller.sendEmailVerification(),
                      child: const Text(ArpTexts.resendEmail,
                          style: TextStyle(color: ArpColors.primary)))),
            ],
          ),
        ),
      ),
    );
  }
}
