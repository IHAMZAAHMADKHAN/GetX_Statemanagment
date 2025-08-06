import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileClass extends GetxController {
  RxString imagepath = "".obs;

  Future<void> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      imagepath.value = pickedImage.path;
    }
  }

  Future<void> pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedImage != null) {
      imagepath.value = pickedImage.path;
    }
  }
}
