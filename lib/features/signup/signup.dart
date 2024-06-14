import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/features/login/login.dart';
import 'package:arpeggio/styles/spacing_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 155,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/decor/Dekor_Atas.png'))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: ArpSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 180,
                          image: AssetImage('assets/logo/Logo.png'),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ArpColors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                              color: ArpColors.darkGrey,
                              offset: Offset(0, 5),
                              blurRadius: 10,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(ArpTexts.headlineDaftar,
                                style: TextStyle(
                                    color: ArpColors.orange,
                                    fontSize: 42,
                                    fontWeight: FontWeight.w900)),
                            Form(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: ArpSizes.spaceBtwItems),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: ArpTexts.name),
                                    ),
                                    const SizedBox(
                                        height: ArpSizes.spaceBtwInputFields),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: ArpTexts.email),
                                    ),
                                    const SizedBox(
                                        height: ArpSizes.spaceBtwInputFields),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: ArpTexts.telepon),
                                    ),
                                    const SizedBox(
                                        height: ArpSizes.spaceBtwInputFields),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: ArpTexts.password,
                                        suffixIcon: Icon(Iconsax.eye_slash),
                                      ),
                                    ),
                                    const SizedBox(
                                        height: ArpSizes.spaceBtwSections),
                                    SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            onPressed: () => Get.to(
                                                () => const LoginScreen()),
                                            child: const Text(
                                                ArpTexts.headlineDaftar))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 42),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "© 2024 Arpeggio",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: ArpColors.darkGrey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
