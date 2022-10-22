import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/counterController.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen1.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('learn Get X'),
      ),
      body:
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<counterController>(
                init: counterController(),
                builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: IconButton(
                          onPressed: controller.incrment,
                          icon: Icon(Icons.add, size: 40),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        )),
                    Center(
                        child: Text("${controller.counter}",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        child: IconButton(
                          onPressed: controller.decrment,
                          icon: Icon(Icons.remove, size: 40),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.to(Screen1());
                      },
                      child: Text('go to scrren 1')),
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
