import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/counterController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  final counterController controller = Get.put(counterController());

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('learn Get X'),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: IconButton(
                  onPressed: controller.incrment,
                  icon: Icon(Icons.add, size: 40),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                )),
                Center(
                    child: Text(
                  "${controller.counter.value}",
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
          )
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
