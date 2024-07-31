 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/main.dart';

class NavBaritem extends BottomNavigationBarItem{
  String title;
  Icon? newIcon = null ;
  String? imagepath ;
  Color Background;
  NavBaritem(this.title,this.Background,{this.imagepath,this.newIcon}):super(icon:
      newIcon!= null? newIcon :
  ImageIcon(AssetImage(getFullPath(imagepath)),),label:title
  ,backgroundColor:Background);

}


