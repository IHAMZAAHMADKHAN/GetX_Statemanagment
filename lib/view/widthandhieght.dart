import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Widthandhieght extends StatefulWidget {
  const Widthandhieght({super.key});

  @override
  State<Widthandhieght> createState() => _WidthandhieghtState();
}

class _WidthandhieghtState extends State<Widthandhieght> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          width: Get.height * 0.4,
          height: Get.height * 0.4,
        ),
      ),
    );
  }
}
