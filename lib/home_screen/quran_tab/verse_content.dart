import 'package:flutter/material.dart';

class verseContent extends StatelessWidget{
 String content;
 int Index;
 verseContent(this.content,this.Index);
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(vertical: 8),
     child: Text('$content {${Index+1}}',
     style: Theme.of(context).textTheme.bodyMedium,
     textAlign: TextAlign.center, textDirection: TextDirection.rtl,),
   );
  }

}