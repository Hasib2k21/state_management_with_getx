import 'package:get/get.dart';

class CounterStaterController extends GetxController{
  var count =0.obs;
  increment(){
    count=count+1;
  }

}