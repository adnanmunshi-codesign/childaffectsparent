import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var kcolor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(100),
              width: 200,
              height: 300,
              decoration: new BoxDecoration(
                color: kcolor,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                      child: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          kcolor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                        });
                      },
                      elevation: 0,
                      constraints: BoxConstraints.tightFor(width: 50, height: 50),
                      shape: CircleBorder(),
                      fillColor: Colors.blue
                  ),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
