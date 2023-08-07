import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Sample App'),
        ),
        body: Center(
          child: Text(
            'This is the sample flutter app',
            style: TextStyle(fontSize: 20.0),
          )
        ),
      ),
    );
  }
}


