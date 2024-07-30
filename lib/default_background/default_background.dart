import 'package:flutter/material.dart';

import '../main.dart';

class Defaultbackground extends StatelessWidget{
 Widget body;
 bool isDark = true;
 Defaultbackground({required this.body});

  @override
  Widget build(BuildContext context) {
   return Stack(children:[
    isDark? Image(image: AssetImage(getFullPath('homeDarkBackground.png'))):
    Image(image: AssetImage(getFullPath('bg3.png'))),
    Scaffold(appBar: AppBar(title: Text('Islami'),),
    body: body)]);
  }

}