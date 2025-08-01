import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/theme_change.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   DialogRoute(
                //     context: context,
                //     builder: (context) => ThemeChange(),
                //   ),
                // );

                Get.to(ThemeChange());
              },
              icon: Icon(Icons.navigation_rounded),
            ),
          ],
        ),
      ),
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
