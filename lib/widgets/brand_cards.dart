import 'package:arpeggio/constants/colors.dart';
import 'package:arpeggio/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class ArpBrandCards extends StatelessWidget {
  const ArpBrandCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Column(
        children: [
          ArpRoundedContainer(
            height: 112,
            padding: EdgeInsets.all(8),
            backgroundColor: ArpColors.arpGradient,
            child: Stack(
              children: [
                Center(
                  child:
                      Image(image: AssetImage('assets/brand logo/gibson.png')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
