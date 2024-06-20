import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/constants/sizes.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/features/login/login_form.dart';
import 'package:arpeggio/styles/spacing_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 155,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/decor/Dekor_Atas.png')),
            ),
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
                          height: 200,
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
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(ArpTexts.headlineMasuk,
                                style: TextStyle(
                                    color: ArpColors.orange,
                                    fontSize: 42,
                                    fontWeight: FontWeight.w900)),
                            ArpLoginForm()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: ArpSizes.spaceBtwInputFields),
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
