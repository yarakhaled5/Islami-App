import 'package:flutter/material.dart';
import 'package:flutter_islami/tabs/quran/sora_details_args.dart';

class SoraDetailsScreen extends StatelessWidget{
  String routeName = 'SoraDetailsScreen';
  @override
  Widget build(BuildContext context) {
    SoraDetailsArgs args= (ModalRoute.of(context)?.settings.arguments) as SoraDetailsArgs;
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/default_bg.png',),fit: BoxFit.cover)
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text(args.name,),
      iconTheme: const IconThemeData(color: Colors.black,size: 40),
    )));
}}