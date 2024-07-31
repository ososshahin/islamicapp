import 'package:flutter/material.dart';
import 'package:islamicapp/Providers/ThemeProvider.dart';
import 'package:islamicapp/app_translation/app_translation.dart';
import 'package:islamicapp/home_screen/hadeth_tab/hadethtab.dart';
import 'package:islamicapp/home_screen/navigation_bar.dart';
import 'package:islamicapp/home_screen/quran_tab/qurantab.dart';
import 'package:islamicapp/home_screen/radio_tab/radiotab.dart';
import 'package:islamicapp/home_screen/settings_tab/settings_tab.dart';
import 'package:islamicapp/home_screen/tasbeh_tab/tasbehtab.dart';
import 'package:islamicapp/main.dart';
import 'package:islamicapp/theme/themedata.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName ='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(children:[ 
      themeProvider.isDarkEnabled()? Image(image: AssetImage(getFullPath('homeDarkBackground.png'))):
      Image(image: AssetImage(getFullPath('bg3.png'))),
      Scaffold(appBar: AppBar(title: Text(appTranslations(context).appTitle,style: Theme.of(context).textTheme.titleMedium,),),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
        onTap:(index) {
            setState(() {
              selectedIndex = index;
            });

        },
        items: [
        NavBaritem(appTranslations(context).quranTab, Theme.of(context).primaryColor,imagepath: 'quran.png'),
          NavBaritem(appTranslations(context).hadethTab, Theme.of(context).primaryColor,imagepath: 'hadeth.png'),
          NavBaritem(appTranslations(context).tasbehTab, Theme.of(context).primaryColor,imagepath: 'sebha.png' ),
          NavBaritem(appTranslations(context).radioTab, Theme.of(context).primaryColor,imagepath: 'radio.png'),
          NavBaritem(appTranslations(context).settingsTab, Theme.of(context).primaryColor,newIcon: Icon(Icons.settings)),
      ],),)]);
  }

 List<Widget>tabs = [Qurantab(),Hadethtab(),Tasbeehtab(),Radiotab(),settingsTab()];
}