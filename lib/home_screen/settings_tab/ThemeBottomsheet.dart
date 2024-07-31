

import 'package:flutter/material.dart';
import 'package:islamicapp/Providers/ThemeProvider.dart';
import 'package:islamicapp/app_translation/app_translation.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget{
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
        color: Theme.of(context).cardColor,
      child:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,
        horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           InkWell(onTap: () {
             setState(() {
               themeProvider.changeTheme(ThemeMode.light);
             });

           },
               child: themeProvider.currentTheme== ThemeMode.light?
               getSelectedItem(context, appTranslations(context).light):
               getUnselectedItem(context, appTranslations(context).light)),
            Divider(height: 20,color: Colors.transparent),
           InkWell(onTap: (){
             setState(() {
               themeProvider.changeTheme(ThemeMode.dark);
             });

           }
           ,
               child: themeProvider.currentTheme== ThemeMode.dark?
               getSelectedItem(context, appTranslations(context).dark):
               getUnselectedItem(context, appTranslations(context).dark))
          ],
        ),
      ),
    );
  }

  Widget getSelectedItem(BuildContext context,String text){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.bodyMedium,),
        Icon(Icons.check,color:Theme.of(context).colorScheme.secondary)
      ],
    );
  }

 Widget getUnselectedItem(BuildContext context,String text){
    return   Text(text,style: Theme.of(context).textTheme.bodyMedium);

 }
}