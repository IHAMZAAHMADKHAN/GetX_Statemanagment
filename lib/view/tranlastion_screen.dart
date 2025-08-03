import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranlastionScreen extends StatelessWidget {
  const TranlastionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome'.tr)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('${'language'.tr}: ${Get.locale?.languageCode}'),
            const SizedBox(height: 16),
            Text('hello'.tr, style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.updateLocale(const Locale('en', 'US')),
                  child: const Text('English'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => Get.updateLocale(const Locale('ps', 'AF')),
                  child: const Text('پښتو'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                if (Get.locale?.languageCode == 'ps') {
                  Get.updateLocale(const Locale('en', 'US'));
                } else {
                  Get.updateLocale(const Locale('ps', 'AF'));
                }
              },
              icon: const Icon(Icons.translate),
              label: Text('toggle'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
