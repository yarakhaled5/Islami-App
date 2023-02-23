import 'package:flutter/material.dart';
import 'package:flutter_islami/hadeth/hadethDetails.dart';
import 'package:flutter_islami/hadeth/hadethDetailsArgs.dart';

class HadethTab extends StatefulWidget{
  @override
  State<HadethTab> createState() => _HadethTabState();
}
class _HadethTabState extends State<HadethTab> {
  late String name;
  late int index;
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Image.asset('assets/images/hadeth_logo.png',),
          Divider(color: Theme.of(context).primaryColor, thickness: 5,),
          Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('Ahadeth',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
          Divider(color: Theme.of(context).primaryColor, thickness: 5,),
          Expanded(child: ListView.separated(itemBuilder: (_,index){
            return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, HadethDetails.routeName ,
                        arguments: HadethDetailsArgs(index: index, name: name)
                      );},
                    child: Text(name= 'حديث رقم ${index=index+1}',style: TextStyle(fontSize: 30),)));
          },
            itemCount: 50,
            separatorBuilder: (_,index){
              return Container(color: Theme.of(context).primaryColor,height: 1,margin: EdgeInsets.symmetric(horizontal: 40
              ),);},))]);
  }
}