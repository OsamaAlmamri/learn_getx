import 'package:flutter/material.dart';
import 'appbar.dart';
class Challange1 extends StatelessWidget {
  const Challange1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('learn Get X'),
      ),
      bottomNavigationBar: HelloConvexAppBar(5),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: 40,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                color: Colors.blue,
              ),
              child: Text(
                'text borders tesxt ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Divider(),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(5),
                child: Text(
                  'text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt text borders tesxt ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 5),

              ),
              child: Column(
                
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ( Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                          ],
                        )),
                        Text('reivesw'),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Container(child:
                            Image.network('https://cdn-icons-png.flaticon.com/512/333/333344.png',width: 70,)
                            ),

                            Text('data'),
                            Text('data'),
                          ],
                        )),
                        Expanded(child: Column(
                          children: [
                            Container(child:
                                Image.network('https://cdn-icons-png.flaticon.com/512/333/333344.png',width: 70,)
                            ),
                            Text('data'),
                            Text('data'),
                          ],
                        )),
                        Expanded(child: Column(
                          children: [
                            Container(child:
                            Image.network('https://cdn-icons-png.flaticon.com/512/333/333344.png',width: 70,)
                            ),
                            Text('data'),
                            Text('data'),
                          ],
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
