import 'package:flutter/material.dart';
import 'package:islamicapp/default_background/default_background.dart';

 class ChapterDetails extends StatelessWidget{
   static const routeName = 'ChapterDetails';
   @override
  Widget build(BuildContext context) {
    var  arg = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
     return Defaultbackground(body:
     Card(
       elevation: 45,
        margin: EdgeInsets.symmetric(vertical: 30,
        horizontal: 30),
        child: Scaffold(
          backgroundColor: Colors.white,
        ),
     ));

  }

}
class ChapterDetailsArgs{
   String title;
   int index;
   ChapterDetailsArgs(this.title,this.index);
}