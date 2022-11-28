import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/custome_drawer.dart';
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
    return DefaultTabController(
      // initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('Screen 2'),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Tap1'),

                  icon: Icon(Icons.add_alert),

                ),
                Tab(
                  child: Text('Tap2'),
                ),
                Tab(
                  child: Text('Tap3'),
                ),
              ],
            ),
          ),
          // bottomNavigationBar: HelloConvexAppBar(2),
          drawer: customDrawer(),
          body: TabBarView(children: [
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ])), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomDrawer {}
