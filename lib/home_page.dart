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
            Get.snackbar(
              'hi',
              "Display the message here",
              colorText: Colors.white,
              backgroundColor: Colors.blueAccent,
              icon: const Icon(Icons.add_alert,color: Colors.white,),
              snackPosition:SnackPosition.BOTTOM,
              showProgressIndicator: true,
              borderRadius: 2,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              isDismissible: false,
              duration: const Duration(seconds: 4),
              animationDuration: const Duration(milliseconds: 2000)

            );
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
