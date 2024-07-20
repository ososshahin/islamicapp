import 'package:flutter/material.dart';

class MyThemedata {
  static final Color primaryLight = Color(0xffB7935F);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor:(Colors.transparent),
      appBarTheme: AppBarTheme(centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize:30),
          color: Colors.transparent),
      colorScheme:ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),onPrimary:Colors.white,
          secondary: Color(0xffB7935F),onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,

      ));
}