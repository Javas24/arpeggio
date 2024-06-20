import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/features/signup/signup_controller.dart';
import 'package:arpeggio/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ArpSignUpForm extends StatelessWidget {
  const ArpSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ArpSizes.spaceBtwItems),
        child: Column(
          children: [
            TextFormField(
              validator: (value) =>
                  ArpValidator.validateEmptyText('Nama', value),
              controller: controller.nama,
              decoration: const InputDecoration(labelText: ArpTexts.name),
            ),
            const SizedBox(height: ArpSizes.spaceBtwInputFields),
            TextFormField(
              validator: (value) => ArpValidator.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(labelText: ArpTexts.email),
            ),
            const SizedBox(height: ArpSizes.spaceBtwInputFields),
            TextFormField(
              validator: (value) => ArpValidator.validatePhoneNumber(value),
              controller: controller.telepon,
              decoration: const InputDecoration(labelText: ArpTexts.telepon),
            ),
            const SizedBox(height: ArpSizes.spaceBtwInputFields),
            Obx(
              () => TextFormField(
                validator: (value) => ArpValidator.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: ArpTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),
            const SizedBox(height: ArpSizes.spaceBtwSections),

            // Signup Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.signup(),
                    child: const Text(ArpTexts.headlineDaftar))),
          ],
        ),
      ),
    );
  }
}
