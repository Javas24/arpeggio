import 'package:arpeggio/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArpAppbar(
        showBackArrow: true,
        title: Text('Profile', style: GoogleFonts.getFont('Poppins')),
      ),
      body: const SingleChildScrollView(),
    );
  }
}
