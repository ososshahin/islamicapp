import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/home_screen.dart';
import 'package:islamicapp/home_screen/quran_tab/chapter_details.dart';
import 'package:islamicapp/splash_screen/splash_screen.dart';
import 'package:islamicapp/theme/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SplashScreen.routeName:(_) => SplashScreen(),
      HomeScreen.routeName:(_)=>HomeScreen(),
      ChapterDetails.routeName: (_)=>ChapterDetails()}
    ,initialRoute: SplashScreen.routeName,
    theme:MyThemedata.lightTheme,
    );
      // This trailing comma makes auto-formatting nicer for build methods.
  }
}
 String getFullPath(String imagepath){
  return 'assets/images/$imagepath';
 }