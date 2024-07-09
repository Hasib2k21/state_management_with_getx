import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: 'delete alert',
              backgroundColor: Colors.green,
              titlePadding: EdgeInsets.all(10),
              titleStyle: TextStyle(color: Colors.black87),
              middleText: ' are you want to delete ',
              middleTextStyle: TextStyle(color: Colors.white),
              radius: 4,
              textConfirm: 'confirm',
              textCancel: 'Not now',
              buttonColor: Colors.indigo,
              onCancel: ()=>{Get.back(closeOverlays: true)},
              onConfirm: ()=>{Get.back(closeOverlays: false)},
              barrierDismissible: true,


            );
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
