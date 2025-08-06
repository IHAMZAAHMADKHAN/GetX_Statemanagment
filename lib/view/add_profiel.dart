import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/profile_class.dart';

class AddProfiel extends StatefulWidget {
  const AddProfiel({super.key});

  @override
  State<AddProfiel> createState() => _AddProfielState();
}

ProfileClass controller = Get.put(ProfileClass());

class _AddProfielState extends State<AddProfiel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Profile")),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: controller.imagepath.isNotEmpty
                    ? FileImage(File(controller.imagepath.value))
                    : const AssetImage('assets/default_avatar.png')
                          as ImageProvider,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.photo),
                label: const Text("Pick from Gallery"),
                onPressed: () {
                  controller.pickImageFromGallery();
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.camera),
                label: const Text("Take from Camera"),
                onPressed: () {
                  controller.pickImageFromCamera();
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
