import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_with_getx/countter_state/counter_stater_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterStaterController c = Get.put(CounterStaterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {c.increment();},
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Obx(() => Text('Add= ${c.count}'))
      ),
    );
  }
}
