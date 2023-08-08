import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/homeScreen.dart';
import 'views/loginScreen.dart';
import 'views/settingsScreen.dart';
import 'views/notificationScreen.dart';
import 'views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point Of Sales System',
      home: const SplashScreen(),
      routes: <String,WidgetBuilder> {
        'splash' : (context) => SplashScreen(),
        'login' : (context) => LoginScreen(),
        'home' : (context) => HomeScreen(),
        'settings' : (context) => SettingsScreen(),
        'notifications' : (context) => NotificationScreen(),
      },

    );
  }
}


