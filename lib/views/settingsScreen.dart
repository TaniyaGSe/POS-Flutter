import 'package:flutter/material.dart';
import 'package:pos_flutter/views/homeScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
          title: Text('Settings',style: TextStyle(fontSize: 20.0),),
          
        ),
        
      ),
    );
  }
}