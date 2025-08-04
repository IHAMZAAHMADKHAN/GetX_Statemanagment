import 'package:get/get.dart';

class CounterClass extends GetxController {
  RxInt count = 1.obs;
  void increment() {
    count++;
    print(count);
  }

  void reset() {
    count.value = 0;
    print(count);
  }
}
