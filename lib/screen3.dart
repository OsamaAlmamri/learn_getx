import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'appbar.dart';
import 'package:dropdown_search/dropdown_search.dart';
class Screen3 extends StatefulWidget {
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var selecte = '';
  var gender = '';
  bool usa = false;
  bool ksa = false;
  double slide_value=10.0;

  late ScrollController sc ;

  @override
  void initState() {
    // TODO: implement initState
    sc=new ScrollController();
    sc.addListener(() {
     print( sc.offset);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffold_key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Screen 3 '),
        ),
        bottomNavigationBar: HelloConvexAppBar(3),
        body: ListView(
          controller: sc,
          children:[
            Container(
            child: Column(
              children: [
                ElevatedButton(onPressed: (){

                  sc.animateTo(sc.position.maxScrollExtent,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                }, child: Text("go to end")),
                ElevatedButton(
                    onPressed: () {
                      // scaffold_key.currentState.showBottomSheet(
                      //    SnackBar(
                      //   behavior:SnackBarBehavior.fixed ,
                      //   duration: Duration(seconds: 1),
                      // backgroundColor: Colors.lime,
                      // content: Text('hi osama'));
                      //
                      // );

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('hi'),
                              content: Text("content"),
                              actions: [
                                ElevatedButton(onPressed: null, child: Text("OK")),
                                ElevatedButton(onPressed: null, child: Text("Cancel"))
                              ],
                            );
                          });
                    },
                    child: Text('show snckbar')),
                Text(selecte),

                DropdownSearch<String>(
                  popupProps: PopupProps.menu(
                    showSelectedItems: true,
                    disabledItemFn: (String s) => s.startsWith('I'),
                  ),
                  items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      labelText: "Menu mode",
                      hintText: "country in menu mode",
                    ),
                  ),
                  onChanged: print,
                  selectedItem: "Brazil",
                ),
                DropdownButton(
                    items: ['', 'item1', 'item2']
                        .map((e) => DropdownMenuItem(
                              child: Text("country : $e "),
                              value: e,
                            ))
                        .toList(),
                    value: selecte,
                    hint: Text("select country"),
                    onChanged: (s) {
                      setState(() {
                        selecte = s.toString();
                      });
                    }),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('slide value is  ${slide_value.toInt()}'),
                      Slider(value: slide_value,
                          min: 0,
                          max:100,
                          activeColor: Colors.red,
                          inactiveColor: Colors.black,
                          onChanged: (val){
                        setState(() {
                          slide_value=val;
                        });
                      }),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('USA'),
                          Checkbox(
                              value: usa,
                              onChanged: (val) {
                                setState(() {
                                  usa = val as bool;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('KSA'),
                          Checkbox(
                              value: ksa,
                              onChanged: (val) {
                                setState(() {
                                  ksa = val as bool;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CheckboxListTile(
                          value: usa,
                          title: Text("USA"),
                          activeColor: Colors.red,
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.all(2),
                          isThreeLine: true,
                          selected: usa,
                          secondary: Icon(Icons.access_alarms),
                          subtitle: Text("USA country "),
                          onChanged: (val) {
                            setState(() {
                              usa = val as bool;
                            });
                          }),
                      CheckboxListTile(
                          value: ksa,
                          contentPadding: EdgeInsets.all(2),
                          secondary: Icon(Icons.g_mobiledata),
                          title: Text("KSA"),
                          subtitle: Text("KSA country "),
                          onChanged: (val) {
                            setState(() {
                              ksa = val as bool;
                            });
                          })
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioListTile(
                          value: usa,
                          groupValue: gender,
                          title: Text("Male"),
                          activeColor: Colors.red,
                          selected: gender == 'male',
                          contentPadding: EdgeInsets.all(2),
                          isThreeLine: true,
                          secondary: Icon(Icons.male),
                          subtitle: Text("Male  "),
                          onChanged: (val) {
                            setState(() {
                              gender = 'male';
                            });
                          }),
                      RadioListTile(
                          value: ksa,
                          groupValue: gender,
                          contentPadding: EdgeInsets.all(2),
                          secondary: Icon(Icons.female),
                          title: Text("female"),
                          activeColor: Colors.red,
                          selected: gender == 'female',
                          subtitle: Text("female "),
                          onChanged: (val) {
                            setState(() {
                              gender = 'female';
                            });
                          })
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('KSA'),
                    Switch(
                        value: usa,
                        activeColor: Colors.red,
                        activeTrackColor: Colors.blue,
                        inactiveTrackColor: Colors.black,
                        inactiveThumbColor: Colors.green,
                        onChanged: (val) {
                          setState(() {
                            usa = val;
                          });
                        }),
                  ],
                ),
                SwitchListTile(
                    value: ksa,
                    contentPadding: EdgeInsets.all(2),
                    secondary: Icon(Icons.g_mobiledata),
                    title: Text("KSA"),
                    subtitle: Text("KSA country "),
                    onChanged: (val) {
                      setState(() {
                        ksa = val as bool;
                      });
                    }),
                ListTile(
                  title: Text('phone'),
                  subtitle: Text('phone description '),
                  leading: Icon(Icons.mobile_off),
                  trailing: Text('200\$'),
                  onTap: () {
                    print('on tap');
                  },
                  onLongPress: () {
                    print(' onLongPress');
                  },
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('"OS"'),
                  radius: 40,
                )
              ],
            ),
          )],
        ));
  }
}
