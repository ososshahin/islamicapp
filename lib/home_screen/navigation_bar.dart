 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/main.dart';

class NavBaritem extends BottomNavigationBarItem{
  String title;
  String imagepath;
  Color Background;
  NavBaritem(this.title,this.imagepath,this.Background):super(icon:ImageIcon(AssetImage(getFullPath(imagepath)),),label:title
  ,backgroundColor:Background);

}


