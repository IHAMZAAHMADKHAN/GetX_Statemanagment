import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginClass extends GetxController {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  RxBool loading = false.obs;

  Future<void> loginApi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse("https://reqres.in/api/login"),

        body: {
          'email': emailcontroller.text,
          'password': passwordcontroller.text,
        },
      );

      if (response.statusCode == 200) {
        Get.snackbar("Login Succesfull", 'Welcome To App');
      } else {
        Get.snackbar("Login Failed", "Try Again");
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString());
    }
  }
}
