import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/default_background/default_background.dart';
import 'package:islamicapp/home_screen/quran_tab/verse_content.dart';
import 'package:islamicapp/theme/themedata.dart';

 class ChapterDetails extends StatefulWidget{
   static const routeName = 'ChapterDetails';

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String>verses = [];
   @override
  Widget build(BuildContext context) {
     ChapterDetailsArgs  arg = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
     if(verses.isEmpty){readfileData(arg.index);}
     return Defaultbackground(body:
     Card(

       elevation: 45,
        margin: EdgeInsets.symmetric(vertical: 30,
        horizontal: 30),
        child: verses.isNotEmpty? ListView.separated(
     itemBuilder: (context, index) => verseContent(verses[index],index),
          itemCount: verses.length,
          separatorBuilder:
              (context, index) =>Container(
                  height: 2,margin: EdgeInsets.symmetric(horizontal: 64),
              width:double.infinity,color: Colors.black) ,
     ):
      Center(child: CircularProgressIndicator())));

  }
  void readfileData (int fileindex)async{
    String filecontent = await rootBundle.loadString('assets/files/${fileindex+1}.txt');
    List<String> lines = filecontent.trim().split('\n' );
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs{
   String title;
   int index;
   ChapterDetailsArgs(this.title,this.index);
}