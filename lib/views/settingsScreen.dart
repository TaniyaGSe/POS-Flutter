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
        body:Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget> [
              ListTile(
                leading: Icon(Icons.brightness_auto),
                title: Text('Theme'),
                subtitle: Text('Change the theme into dark mode or light mode'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                subtitle: Text('Change the language'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.brightness_auto),
                title: Text('Brightness Auto'),
                subtitle: Text('Change the brightness'),
                onTap: () {},
              )
            ],
          ),
        )
        
      ),
    );
  }
}