import 'package:arpeggio/binding/general_bindings.dart';
import 'package:arpeggio/constants/colors.dart';
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
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(backgroundColor: ArpColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
