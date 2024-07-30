import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/quran_tab/chapter_details.dart';
import 'package:islamicapp/main.dart';
import 'package:islamicapp/theme/themedata.dart';

class Qurantab extends StatelessWidget{
  var Chaptertitle = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return(Scaffold(body:
      Column(children: [
        Image(image: AssetImage(getFullPath('quranheader.png'))),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemedata.primaryLight,
        ),
        Text('Chapter Name',
         style:Theme.of(context).textTheme.titleSmall,),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemedata.primaryLight,
        ),
        Expanded(
          child: ListView.separated(itemBuilder:(context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, ChapterDetails.routeName,
                arguments: ChapterDetailsArgs(Chaptertitle[index], index));
              },
              child: Text(Chaptertitle[index],
                style:Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            );
          },itemCount: Chaptertitle.length,
          separatorBuilder:  (context, index) {
           return Container(
              width: double.infinity,
              height: 2,
              color: MyThemedata.primaryLight,
            );
          },),
        )
      ],
      )
    ));
  }

}