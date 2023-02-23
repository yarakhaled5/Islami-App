import 'package:flutter/material.dart';
import 'package:flutter_islami/hadeth/hadethTab.dart';
import 'package:flutter_islami/tabs/quran/quranTab.dart';
import 'package:flutter_islami/tabs/radio.dart';
import 'package:flutter_islami/tabs/sebha.dart';

class HomePage extends StatefulWidget{
 static String routeName='home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int selectedindex=0;

  Widget build(BuildContext context) {
    return
       Container(
decoration: const BoxDecoration(
  image: DecorationImage(image: AssetImage('assets/images/default_bg.png',),fit: BoxFit.cover)
),
         child: Scaffold(
           backgroundColor: Colors.transparent,
           appBar: AppBar(
             title: Text('Islami',),
           ),
             bottomNavigationBar:
             BottomNavigationBar(
               showSelectedLabels: true,
               showUnselectedLabels: false,
               type: BottomNavigationBarType.fixed,
               backgroundColor: Theme.of(context).primaryColor,
               selectedItemColor: Colors.black,
               unselectedItemColor: Colors.white,
               currentIndex: selectedindex,
               onTap: (newSelected){
                 setState(() {
                   selectedindex=newSelected;
                 });
               },
               items: const [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),size: 60,), label: 'Quran'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),size: 60,),label: 'Radio'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),size: 60,), label: 'Sebha'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),size: 60,), label: 'Hadeth'),


             ],
             ),
           body:tabs[selectedindex],

      ),
       );

  }
List <Widget> tabs=[QuranTab(),RadioTab(),SebhaTab(),HadethTab()];
}