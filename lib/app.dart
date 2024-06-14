import 'package:arpeggio/features/login/login.dart';
import 'package:arpeggio/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Arpeggio",
      themeMode: ThemeMode.system,
      theme: ArpAppTheme.lightTheme,
      darkTheme: ArpAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
