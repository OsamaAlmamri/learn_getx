import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen2.dart';
import 'screen3.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Screen 1 '),
        ),
        body: Container(
          child: Column(
            children: [
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
        ));
  }
}
