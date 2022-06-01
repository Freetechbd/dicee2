import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee App"),
        backgroundColor: Colors.red,
      ),
      body: DiceeApp(),
    ),
  ));
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  _DiceeAppState createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  var count = 1;
  var count2 = 1;
  void Counter() {
    count = Random().nextInt(6) + 1;
    count2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$count.png"),
              onPressed: () {
                setState(() {
                  Counter();
                });
              },
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$count2.png"),
              onPressed: () {
                setState(() {
                  Counter();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
