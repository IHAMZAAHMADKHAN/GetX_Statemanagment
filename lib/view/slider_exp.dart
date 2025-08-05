import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/slider_class.dart';

class SliderExp extends StatefulWidget {
  const SliderExp({super.key});

  @override
  State<SliderExp> createState() => _SliderExpState();
}

SliderClass _sliderClass = Get.put(SliderClass());

class _SliderExpState extends State<SliderExp> {
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: Get.height * 0.6,
              width: Get.width * 0.6,
              color: Colors.yellow.withOpacity(_sliderClass.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
              min: 0.0,
              max: 1.0,
              divisions: 20,
              value: _sliderClass.opacity.value,
              onChanged: (value) {
                _sliderClass.setOpacity(value);
              },
            );
          }),
        ],
      ),
    );
  }
}
