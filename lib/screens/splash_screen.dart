import 'package:flutter/material.dart';
import 'package:mini_projects/screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: LoginScreen(),
      backgroundColor: Colors.greenAccent,
      image: Image.asset('./assets/logo.png'),
      photoSize: 100.0,
      title: Text(
        "E-Trash",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
