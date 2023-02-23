import 'package:flutter/material.dart';
import 'package:flutter_islami/tabs/quran/sora_details_args.dart';

class SoraName extends StatelessWidget{
  String names;
int index;
  SoraName( this.names,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/second',
          arguments: SoraDetailsArgs(name: names, index: index)
        ) ;
      },
      child: Container( alignment: Alignment.center,
          padding: const EdgeInsets.all(7),
          child: Text( names ,style: const TextStyle(fontSize: 30),)),
    );
  }
}