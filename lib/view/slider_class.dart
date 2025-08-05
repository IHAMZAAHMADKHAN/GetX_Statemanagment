import 'package:get/get.dart';

class SliderClass extends GetxController {
  RxDouble opacity = 0.4.obs;

  void setOpacity(double value) {
    opacity.value = value;
  }
}
