import 'package:flutter/material.dart';
import 'loginScreen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  double imageSize = 50.0; // Initial size of the image

  @override
  void initState() {
    super.initState();
    // Add a delay to start the animation after a certain duration
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        imageSize = 270.0; // Final size of the image
      });
    });

    // Navigate to the next screen after 5 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('home');
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body:Container(
          alignment: Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              AnimatedContainer(
                duration: Duration(milliseconds: 1000), // Animation duration
                width: imageSize,
                height: imageSize,
                child: Image.asset(
                  'asset/images/PosLogo.jpg',
                ),
              ),
            ],           
          )
        )
      )
    );
  }
}