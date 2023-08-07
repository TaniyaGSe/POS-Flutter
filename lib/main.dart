import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Mobile App UI Design',
      home: const SplashScreen(),

    );
  }
}


