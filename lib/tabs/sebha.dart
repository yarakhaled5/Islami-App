
import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int count=0;
List <String> tasbeh=['الله اكبر','لا اله الا الله','الحمدلله','سبحان الله'];
int index=0;
late Image sebha;

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
  return
  Column(
    children:[
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30,),
          child: Image.asset('assets/images/head_sebha_logo.png')),
      ///animation

     InkWell(
      onTap: (){
        setState(() {

          tasbehCounter();
          Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(3.141593653589/4));
        });},

         child: sebha=Image.asset('assets/images/body_sebha_logo.png')),

      const Text('Tasbeh counts',style: TextStyle(fontSize: 35),),
      SizedBox(height: 15,),
      Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xffc7b295),
          borderRadius: BorderRadius.circular(30)
        ),
          child: Text('$count',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
     SizedBox(height: 15,),
     Container(
         padding: EdgeInsets.symmetric(horizontal: 20),
         decoration: BoxDecoration(
           color: Theme.of(context).primaryColor,
           borderRadius: BorderRadius.circular(30)
         ),
         child:Text( tasbeh[index] ,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),))
      

    ]
  );
  }
  cl(){
    setState(() {
      Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(3.141593653589/4),
      child: sebha,);
    });

  }

  tasbehCounter(){
    if (count==33){
      count=0;
      index++;
      if(index==4){
        index=0;
      }
    }
    else{
      count++;
    }
}
}