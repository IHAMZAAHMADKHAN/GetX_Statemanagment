import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.light),
              title: const Text("Light Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.light());
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Dart Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   DialogRoute(
                //     context: context,
                //     builder: (context) => ThemeChange(),
                //   ),
                // );

                Get.back();
              },
              icon: Icon(Icons.navigation_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
