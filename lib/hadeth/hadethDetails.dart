import 'package:flutter/material.dart';
import 'package:flutter_islami/hadeth/hadethDetailsArgs.dart';

class HadethDetails extends StatelessWidget{
  static const String routeName = 'hadethDetails';
  @override
  Widget build(BuildContext context) {
    HadethDetailsArgs args= (ModalRoute.of(context)?.settings.arguments) as HadethDetailsArgs;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/default_bg.png',),fit: BoxFit.cover)
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(args.name,),
              iconTheme: const IconThemeData(color: Colors.black,size: 40),
            ),));
  }
}