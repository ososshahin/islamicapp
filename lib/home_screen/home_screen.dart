import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/hadeth_tab/hadethtab.dart';
import 'package:islamicapp/home_screen/navigation_bar.dart';
import 'package:islamicapp/home_screen/quran_tab/qurantab.dart';
import 'package:islamicapp/home_screen/radio_tab/radiotab.dart';
import 'package:islamicapp/home_screen/tasbeh_tab/tasbehtab.dart';
import 'package:islamicapp/main.dart';
import 'package:islamicapp/theme/themedata.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName ='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  bool isDark = true;
  @override
  Widget build(BuildContext context) {

    return Stack(children:[ 
      isDark? Image(image: AssetImage(getFullPath('homeDarkBackground.png'))):
      Image(image: AssetImage(getFullPath('bg3.png'))),
      Scaffold(appBar: AppBar(title: Text('Islami',style: Theme.of(context).textTheme.titleMedium,),),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
        onTap:(index) {
            setState(() {
              selectedIndex = index;
            });

        },
        items: [
        NavBaritem('quran', 'quran.png',Theme.of(context).primaryColor),
          NavBaritem('hadeth', 'hadeth.png',Theme.of(context).primaryColor),
          NavBaritem('sebha', 'sebha.png',Theme.of(context).primaryColor ),
          NavBaritem('radio', 'radio.png',Theme.of(context).primaryColor)
      ],),)]);
  }

 List<Widget>tabs = [Qurantab(),Hadethtab(),Tasbeehtab(),Radiotab()];
}