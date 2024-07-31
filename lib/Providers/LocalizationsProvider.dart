import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoclaizationsProvider extends ChangeNotifier{
  String currentLocale = 'en';
  SharedPreferences preferences;
  static const String langKey = 'lang';
  LoclaizationsProvider(this.preferences){
    getSavedLocale();
  }
  getSavedLocale(){
    currentLocale = preferences.getString(langKey)??'en';
  }

  saveLocale(){
    preferences.setString(langKey, currentLocale);
  }
  changeLocale(String locale){
    currentLocale = locale;
    notifyListeners();
    saveLocale();
  }
}