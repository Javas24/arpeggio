import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
// import 'package:arpeggio/features/home/home.dart';
import 'package:arpeggio/features/login/login_controller.dart';
import 'package:arpeggio/features/signup/signup.dart';
import 'package:arpeggio/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ArpLoginForm extends StatelessWidget {
  const ArpLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ArpSizes.spaceBtwItems),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => ArpValidator.validateEmail(value),
              decoration: const InputDecoration(labelText: ArpTexts.email),
            ),
            Obx(
              () => TextFormField(
                validator: (value) =>
                    ArpValidator.validateEmptyText('Password', value),
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
            const SizedBox(height: 2),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(ArpTexts.forgetPassword,
                        style: TextStyle(color: ArpColors.orange))),
              ],
            ),
            const SizedBox(height: ArpSizes.spaceBtwSections),
            SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        Get.to(() => controller.emailAndPasswordSignIn()),
                    child: const Text(ArpTexts.headlineMasuk))),
            const SizedBox(height: ArpSizes.spaceBtwItems),
            SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: const Text(ArpTexts.headlineDaftar))),
          ],
        ),
      ),
    );
  }
}
