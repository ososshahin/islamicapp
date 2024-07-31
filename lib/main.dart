import 'package:flutter/material.dart';
import 'package:islamicapp/Providers/ThemeProvider.dart';
import 'package:islamicapp/home_screen/hadeth_tab/Hadeth_details.dart';
import 'package:islamicapp/home_screen/home_screen.dart';
import 'package:islamicapp/home_screen/quran_tab/chapter_details.dart';
import 'package:islamicapp/splash_screen/splash_screen.dart';
import 'package:islamicapp/theme/themedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Providers/LocalizationsProvider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs=  await SharedPreferences.getInstance();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider(prefs),),
      ChangeNotifierProvider(create: (context) => LoclaizationsProvider(prefs),),
    ],
      child:
  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeprovider = Provider.of<ThemeProvider>(context);
    LoclaizationsProvider localeprovider = Provider.of<LoclaizationsProvider>(context);
    return MaterialApp(
      routes: {SplashScreen.routeName:(_) => SplashScreen(),
      HomeScreen.routeName:(_)=>HomeScreen(),
      ChapterDetails.routeName: (_)=>ChapterDetails(),
      hadethDetails.routeName:(context) => hadethDetails()}
    ,initialRoute: SplashScreen.routeName,
    theme:MyThemedata.lightTheme,
      darkTheme: MyThemedata.DarkTheme,
      themeMode: themeprovider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeprovider.currentLocale),
    );
      // This trailing comma makes auto-formatting nicer for build methods.
  }
}
 String getFullPath(String? imagepath){
  return 'assets/images/$imagepath';
 }