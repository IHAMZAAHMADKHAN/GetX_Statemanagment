import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/widthandhieght.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('theme'.tr)),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.light_mode),
              title: Text('light_theme'.tr),
              onTap: () {
                Get.changeTheme(ThemeData.light());
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: Text('dark_theme'.tr),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                Get.to(() => const Widthandhieght());
              },
              icon: const Icon(Icons.navigation_rounded),
              tooltip: 'navigate'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
