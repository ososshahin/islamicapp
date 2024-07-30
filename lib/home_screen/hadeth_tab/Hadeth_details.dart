

import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/hadeth_tab/hadethtab.dart';

import '../../default_background/default_background.dart';

class hadethDetails extends StatelessWidget{
  static const String routeName = 'hadethDetails';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Defaultbackground(body:
    Card(

        elevation: 60,
        margin: EdgeInsets.symmetric(vertical: 30,
            horizontal: 30),
        child:
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                     textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                    hadeth.Content),
              ),
            ),
          ],
        )));

  }
  
}