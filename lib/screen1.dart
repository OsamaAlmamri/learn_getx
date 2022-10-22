import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/counterController.dart';
import 'screen2.dart';
import 'screen3.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Screen 1'),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<counterController>(
            init: counterController(),
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 30),
                )),
                Center(
                    child: Text(
                  "${controller.counter2}",
                  style: TextStyle(fontSize: 30),
                )),
                Center(
                    child: Text(
                  "${controller.sum}",
                  style: TextStyle(fontSize: 30),
                )),
              ],
            ),
          ),
          Column(
            children: [

              GetBuilder<counterController>(
                init: counterController(),
                builder: (controller) => Container(
                    child: ElevatedButton(
                      child: Text("incement counter 1"),
                  onPressed: controller.incrment,
                )),
              ),
              GetBuilder<counterController>(
                init: counterController(),
                builder: (controller) => Container(
                    child: ElevatedButton(
                      child: Text("incement counter 2"),
                  onPressed: controller.incrment2,
                )),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Screen2());
                  },
                  child: Text('go to scrren 2')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Screen3());
                  },
                  child: Text('go to scrren 3')),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Back ')),
            ],
          ),
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
