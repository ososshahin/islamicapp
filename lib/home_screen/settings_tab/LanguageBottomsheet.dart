import 'package:flutter/material.dart';
import 'package:islamicapp/Providers/LocalizationsProvider.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    LoclaizationsProvider loclaizationsProvider = Provider.of<LoclaizationsProvider>(context);
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
             loclaizationsProvider.changeLocale('en');
           },
               child: loclaizationsProvider.currentLocale=='en'?
               getSelectedItem(context, 'English'):
                getUnselectedItem(context, 'English')),
            Divider(height: 20,color: Colors.transparent),
           InkWell(onTap:() {
             loclaizationsProvider.changeLocale('ar');
           },
               child: loclaizationsProvider.currentLocale=='ar'?
               getSelectedItem(context, 'العربية'):
               getUnselectedItem(context, 'العربية'))
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
        Icon(Icons.check, color: Theme.of(context).colorScheme.secondary,)
      ],
    );
  }
 Widget getUnselectedItem(BuildContext context,String text){
    return   Text(text,style: Theme.of(context).textTheme.bodyMedium);

 }

}