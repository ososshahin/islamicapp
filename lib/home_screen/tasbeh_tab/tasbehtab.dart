import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamicapp/app_translation/app_translation.dart';
import 'package:islamicapp/main.dart';
import 'package:islamicapp/theme/themedata.dart';

class Tasbeehtab extends StatefulWidget{

  @override
  State<Tasbeehtab> createState() => _TasbeehtabState();
}

class _TasbeehtabState extends State<Tasbeehtab> {
  List<String>tasbeh= ['الله اكبر','الحمدلله','سبحان الله'];
  String currentzikr ='';

  @override
  void initState() {
    currentzikr = tasbeh[0];
  }
  double turns = 0.0;
  void changerotation(){

   setState(() {
     turns+=1.0/8.0;
   });
  }
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
       body: Column(
         children: [
           SizedBox(
             height: 50,
           ),
           Stack(

             children:[ Positioned(
               child: Center(child: AnimatedRotation( duration: Duration(seconds: 1),
                 turns: turns,
                 child: Image(image: AssetImage(getFullPath('body of seb7a.png'))))
                            ),
               ),
    Positioned(child:
    Image(image: AssetImage(getFullPath('head of seb7a.png'))),right: 0,left: 20,bottom: 25,
    ),
          ],  ),
           Text(appTranslations(context).tasbehNumber,
             style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.secondary),
           ),
           SizedBox(height: 40,width: 40,),
           ButtonTheme( height: 81,minWidth: 69,
               child: ElevatedButton(onPressed: (){
                 onCounterclick();}, child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 30),
                 child: Text('${counter.toString()}',style: TextStyle(fontSize: 25),),
               ),)),
           SizedBox(height: 50,width: 20,),
           Container(height: 51,width: 137,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:MyThemedata.primaryLight),
             child: Text(currentzikr,style: TextStyle(color:Colors.white,fontSize: 25),textAlign: TextAlign.center,),
           )

         ],
       ),

    ));
  }

  int counter= 0;
  int i =0;

onCounterclick() {
changerotation();
  setState(() {
  counter++;


if(counter>33){
  counter = 0;
  Changezikr();
}
if(counter>33&& i>=2){
  i = 0;
  Changezikr();


}




});



}
Changezikr(){
  if(i<3){
    currentzikr=tasbeh[i+1];
  }
  i++;

}
}