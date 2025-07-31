import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: []),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Snap time",
            "let's try to take snap",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: Icon(Icons.snapchat),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
