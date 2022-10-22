import 'package:get/get.dart';

class counterController2 extends GetxController {
  RxInt counter = 0.obs;
  RxInt counter2 = 0.obs;


  void incrment() {
    counter++;
    update();
  }

  void incrment2() {
    counter++;
    update();
  }

  void decrment() {
    counter2--;
    update();
  }

  void decrment2() {
    counter2--;
    update();
  }

  int  get sum {
    return counter.value + counter2.value;
  }
}
