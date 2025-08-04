import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_statemanagement/view/counter_class.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

final CounterClass counter = Get.put(CounterClass());

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Counter ${counter.count.value}",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                counter.reset();
              },
              child: Text("Reset counter"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        child: Text("Tap ME"),
      ),
    );
  }
}
