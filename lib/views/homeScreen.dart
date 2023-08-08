import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading : IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          title: Text('Home',style: TextStyle(fontSize: 20.0),),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('notifications');
              }, 
              icon: Icon(Icons.notifications)
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('settings');
              }, 
              icon: Icon(Icons.settings)
            )
          ],
        ),
        
      ),
    );
  }
}