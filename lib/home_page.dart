import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                GetStorage().write("Name", "Md Hasibul Islam");
              },
              child: Text('write '),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                var MyName=GetStorage().read('Name');
                Get.snackbar(MyName, 'This Is My Name');
                
              },
              child: Text('read'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
              GetStorage().remove('Name');
              },
              child: Text('erase'),
            ),
          ],
        ),
      ),
    );
  }
}
