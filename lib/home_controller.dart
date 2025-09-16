import 'package:get/get.dart';

class HomeController extends GetxController{
  Rx<int> counter=0.obs;

  increment(){
    counter.value++;
    update();
    print(counter.value);
  }
}