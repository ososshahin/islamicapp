import 'package:flutter/material.dart';
import 'package:islamicapp/home_screen/hadeth_tab/Hadeth_details.dart';
import 'package:islamicapp/home_screen/hadeth_tab/hadethtab.dart';

class hadethTitle extends StatelessWidget{
 Hadeth hadeth;
 hadethTitle(this.hadeth);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
      Navigator.pushNamed(context, hadethDetails.routeName,
      arguments: hadeth);
      },
      child: Text(hadeth.title,
        style:Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

}