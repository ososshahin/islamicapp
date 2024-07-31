import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThemedata {
  static final Color primaryLight = Color(0xffB7935F);
  static final Color primaryDark = Color(0xff141A2E);
  static final Color secondaryDark = Color(0xffFACC1D);


  static final ThemeData lightTheme = ThemeData(
      dividerColor: Colors.transparent,
    textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 30,fontFamily:'elmessiri',
          fontWeight: FontWeight.bold,color: Colors.black),
      titleSmall: TextStyle(fontSize: 25,fontFamily:'elmessiri',
          fontWeight: FontWeight.w500,color: Colors.black),
      bodyLarge: TextStyle(fontSize: 25,fontFamily: 'Inter',color: Colors.black),
      bodyMedium: TextStyle(fontSize: 20,fontFamily: 'Inter',color: Colors.black)
    ),
    cardColor: Colors.white,
      scaffoldBackgroundColor:(Colors.transparent),
      appBarTheme: AppBarTheme(centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize:30),
          color: Colors.transparent,iconTheme: IconThemeData(color: Colors.black)),
      colorScheme:ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),onPrimary:Colors.white,
          secondary: Color(0xffB7935F),onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,

      ));static final ThemeData DarkTheme = ThemeData(
    dividerColor: Colors.transparent,
      textTheme: TextTheme(
          titleMedium: TextStyle(fontSize: 30,fontFamily:'elmessiri',
          fontWeight: FontWeight.bold,color: Colors.white),
          titleSmall: TextStyle(fontSize: 25,fontFamily: 'elmessiri',
          color: Colors.white,
          fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 25,fontFamily: 'Inter',color: Colors.white),
          bodyMedium: TextStyle(fontSize: 20,fontFamily: 'Inter',color: secondaryDark)
      ),
      cardColor: primaryDark,
      scaffoldBackgroundColor:(Colors.transparent),
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white),centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white,fontSize:30),
          color: Colors.transparent),
      colorScheme:ColorScheme.fromSeed(
          seedColor: primaryDark,
          primary: primaryDark,onPrimary:Colors.white,
          secondary: secondaryDark,onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: secondaryDark,
        unselectedItemColor: Colors.white,

      ));
}