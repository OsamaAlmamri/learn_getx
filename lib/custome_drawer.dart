import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
              accountName: Text('osama'),
              accountEmail: Text('yemencoder@gmail.com')),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Get.toNamed('/home');
            },
          )
        ],
      ),
    );
  }
}
