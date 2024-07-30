import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/home_screen/hadeth_tab/hadeth_title.dart';

import '../../main.dart';
import '../../theme/themedata.dart';

class Hadethtab extends StatefulWidget{

  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
 List<Hadeth>allHadeth =[];
  @override
  void initState() {
    readHadethData();
    super.initState();
  }
 @override
  Widget build(BuildContext context) {
    
    return((Scaffold(body:
    Column(children: [
      Image(image: AssetImage(getFullPath('hadith_header.png'))),
      Container(
        width: double.infinity,
        height: 2,
        color: MyThemedata.primaryLight,
      ),
      Text('Hadeth No.',
        style: Theme.of(context).textTheme.titleSmall),
      Container(
        width: double.infinity,
        height: 2,
        color: MyThemedata.primaryLight,
      ),
      Expanded(
        child: allHadeth.isNotEmpty ?ListView.separated(itemBuilder:(context, index) {
          return hadethTitle(allHadeth[index]);
        },itemCount:allHadeth.length,
          separatorBuilder:  (context, index) {
            return Container(
              width: double.infinity,
              height: 2,
              color: MyThemedata.primaryLight,
            );
          },):
            Center(child: CircularProgressIndicator())
      )
    ],
    )
    )));
  }
  void readHadethData()async{
  String filecontent = await rootBundle.loadString('assets/files/ahadeth.txt');
  List<String>seperatedHadeth = filecontent.split('#');
  for(int i =0;i<seperatedHadeth.length;i++){
    String Singlehadeth = seperatedHadeth[i];
    List<String>lines = Singlehadeth.trim().split('\n');
    String title = lines[0];
    lines.removeAt(0);
    String content = lines.join('\n');
    Hadeth h = Hadeth(title, content);
    allHadeth.add(h);
    setState(() {

    });
  }
  }
}
class Hadeth{
  String title;
  String Content;
  Hadeth(this.title,this.Content);

}