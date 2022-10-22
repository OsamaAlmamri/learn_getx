import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "Home.dart";
import 'appbar.dart';
import 'screen2.dart';
import 'screen1.dart';
import 'screen3.dart';
import 'settings.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FlutterNativeSplash.remove();

  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/home",
      getPages: [
        GetPage(name: '/home', page: ()=>HomePage()),
        GetPage(name: '/Screen1', page: ()=>Screen1()),
        GetPage(name: '/Screen2', page: ()=>Screen2()),
        GetPage(name: '/Screen3', page: ()=>Screen3()),
        GetPage(name: '/Settings', page: ()=>Settings()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

