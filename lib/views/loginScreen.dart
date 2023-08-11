import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Point of Sales System"),
                  Text("ABC retailers (PVT) Ltd"),
                  SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Please enter user name',
                      labelText: 'User Name',
                    ),
                    validator: (text) {
                      if(text!.isEmpty) {
                        return "Please enter username";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Please enter password',
                      labelText: 'Password',
                    ),
                    validator: (text) {
                      if(text!.isEmpty) {
                        return "Please enter username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {                       
                        if(_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed('home');
                        }
                      }, 
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}