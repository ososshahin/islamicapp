import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
 bool isDarK = true;
 SharedPreferences prefs;
 static const String isDarkTheme= 'theme';
 ThemeProvider(this.prefs){
   getSavedTheme();
 }

  getSavedTheme(){
   var isDarK = prefs.getBool(isDarkTheme)??false;
   currentTheme = isDarK? ThemeMode.dark:ThemeMode.light;
  }
  saveCurrentTheme(){
   prefs.setBool(isDarkTheme, currentTheme==ThemeMode.dark);
  }


   changeTheme(ThemeMode newTheme){
     currentTheme = newTheme;
     notifyListeners();
     saveCurrentTheme();
   }
  bool isDarkEnabled(){
     return currentTheme==ThemeMode.dark;
  }


}
