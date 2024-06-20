import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/features/login/forget_password_controller.dart';
import 'package:arpeggio/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(ArpSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text(ArpTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ArpSizes.spaceBtwItems),
              Text(ArpTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: ArpSizes.spaceBtwItems * 2),

              // Textfield
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,
                  validator: ArpValidator.validateEmail,
                  decoration: const InputDecoration(labelText: ArpTexts.email),
                ),
              ),
              const SizedBox(height: ArpSizes.spaceBtwItems),

              // Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.sendPasswordResetEmail(),
                      child: const Text(ArpTexts.submit)))
            ],
          )),
    );
  }
}
