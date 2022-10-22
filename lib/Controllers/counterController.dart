import 'package:get/get.dart';

class counterController extends GetxController {
  RxInt counter = 0.obs;

void  incrment() {
    counter++;

  }

 void decrment() {
    counter--;

  }
}
