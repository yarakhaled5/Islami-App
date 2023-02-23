import 'package:flutter/material.dart';
import 'package:flutter_islami/homePage.dart';
import 'package:flutter_islami/myTheme.dart';
import 'package:flutter_islami/tabs/quran/soraDetailsScreen.dart';

void main() {
 runApp(MyApplication());}
class MyApplication extends StatelessWidget
{
  static const String routName='my application';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        HomePage.routeName: (_)=> HomePage(),
        '/second':(_)=> SoraDetailsScreen(),
      },
      initialRoute: HomePage.routeName,
    );

  }
}