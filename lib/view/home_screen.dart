import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/theme_change.dart';
import 'package:getx_statemanagement/view/tranlastion_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_title'.tr), // translated title
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                Get.to(() => const ThemeChange());
              },
              icon: const Icon(Icons.navigation_rounded),
              tooltip: 'theme'.tr,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const TranlastionScreen());
              },
              child: Text('go_to_translation'.tr),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'snap_time'.tr,
            'snap_message'.tr,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.snapchat),
        backgroundColor: Colors.amber,
        tooltip: 'snackbar'.tr,
      ),
    );
  }
}
