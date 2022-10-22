import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'Controllers/counterController2.dart';
import 'appbar.dart';
import 'screen1.dart';
import 'screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  final counterController2 controller = Get.put(counterController2());

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Screen 2'),
      ),
      bottomNavigationBar: HelloConvexAppBar(2),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<counterController2>(
            init: counterController2(),
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
              Container(
                  child: ElevatedButton(
                child: Text("incement counter 1"),
                onPressed: controller.incrment,
              )),
              Container(
                  child: ElevatedButton(
                child: Text("incement counter 2"),
                onPressed: controller.incrment2,
              )),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Screen1());
                  },
                  child: Text('go to scrren 1')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Screen3());
                  },
                  child: Text('go to scrren 3')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(HomePage());
                  },
                  child: Text('Home ')),
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
