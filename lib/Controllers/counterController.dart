import 'package:get/get.dart';

class counterController extends GetxController {
  int counter = 0;
  int counter2 = 0;

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

  int get sum {
    return counter + counter2;
  }
}
