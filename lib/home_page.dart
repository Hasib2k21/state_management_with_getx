import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_with_getx/product_page.dart';

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
           Get.toNamed('/product');
          // Get.offNamed(ProductPage());
           //Get.offAllNamed(ProductPage());
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
