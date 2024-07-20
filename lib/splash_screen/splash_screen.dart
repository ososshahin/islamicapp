import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/home_screen.dart';
import 'package:islamicapp/main.dart';

class SplashScreen extends StatelessWidget{
 static const routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:3), () => Navigator.pushReplacementNamed(context, HomeScreen.routeName));
    return Scaffold(body:
    Image(
      image: AssetImage(getFullPath('splash.png')),));
  }

}