import 'package:flutter/material.dart';
import 'package:arpeggio/constants/colors.dart';

class ArpHeaderProfil extends StatelessWidget {
  const ArpHeaderProfil({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        color: ArpColors.white,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Container(
              width: 428,
              height: 180,
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: ArpColors.arpGradient,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
