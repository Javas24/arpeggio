import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/features/login/forget_password_controller.dart';
import 'package:arpeggio/features/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              const Image(image: AssetImage(ArpImage.emailVerify), width: 260),
              const SizedBox(height: ArpSizes.spaceBtwSections),
              // Title
              Text(ArpTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Text(ArpTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()), child: const Text(ArpTexts.done)),
              ),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => ForgetPasswordController.instance.resendPasswordResetEmail(email),
                    child: const Text(
                      ArpTexts.resendEmail,
                      style: TextStyle(color: ArpColors.primary),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
