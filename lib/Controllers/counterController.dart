import 'package:get/get.dart';

class counterController extends GetxController {
  int counter = 0;

void  incrment() {
    counter++;
    update();
  }

 void decrment() {
    counter--;
    update();
  }
}
