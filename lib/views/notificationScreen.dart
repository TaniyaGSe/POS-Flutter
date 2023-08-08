import 'package:flutter/material.dart';
import 'package:pos_flutter/views/homeScreen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading : IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context,HomeScreen());
            },
          ),
          title: Text('Notifications',style: TextStyle(fontSize: 20.0),),
          
        ),
        
      ),
    );
  }
}