import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/class_lang.dart';
import 'package:getx_statemanagement/view/home_screen.dart';
// adjust path if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Tranlastion(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const HomeScreen(),
    );
  }
}
