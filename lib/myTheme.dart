import 'package:flutter/material.dart';

class MyTheme{
  static const Color lightPrimary= Color(0xffb6925f);
  static final ThemeData lightTheme= ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),
    ));
}