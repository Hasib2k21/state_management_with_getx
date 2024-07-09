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
            Get.bottomSheet(
              Container(
                height: 200,
                color: Colors.green,
                child: Column(
                  children: [
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    ElevatedButton(
                      onPressed: () => {Get.back(closeOverlays: true)},
                      child: Text('Close'),
                    )
                  ],
                ),
              ),
              enableDrag: true,
              isDismissible: false,
              barrierColor: Colors.red[1],backgroundColor: Colors.purple
            );
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
