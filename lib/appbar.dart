import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HelloConvexAppBar extends StatelessWidget {
  final int index;
  HelloConvexAppBar(this.index);

  @override

  Widget build(BuildContext context) {
    return ConvexAppBar(
      initialActiveIndex:index ,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Screen1'),

        TabItem(icon: Icons.add, title: 'Screen2'),
        TabItem(icon: Icons.message, title: 'Screen3'),
        TabItem(icon: Icons.settings, title: 'Settings'),
        TabItem(icon: Icons.settings, title: 'Challange1'),
        TabItem(icon: Icons.dashboard, title: 'MyDropdownSearch'),
      ],
      onTap: (int i) {
        print('click index=$i');
        switch (i) {
          case 1:
            Get.offNamed('/Screen1');
            break;
          case 2:
            Get.offNamed('/Screen2');
            break;
          case 3:
            Get.offNamed('/Screen3');
            break;
          case 4:
            Get.offNamed('/Settings');
            break;
          case 5:
            Get.offNamed('/Challange1');
            break;
          case 6:
            Get.offNamed('/MyDropdownSearch');
            break;
          default:
            Get.offNamed('/home');
            break;
        }
      },
    );
  }
}
