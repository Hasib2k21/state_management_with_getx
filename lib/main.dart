import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:state_management_with_getx/product_page.dart';

import 'home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=>HomePage(),transition: Transition.leftToRight),
        GetPage(name: '/product', page:()=>ProductPage(),transition: Transition.rightToLeft),
      ],
    );
  }
}
