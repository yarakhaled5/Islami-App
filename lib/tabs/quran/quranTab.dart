import 'package:flutter/material.dart';
import 'package:flutter_islami/tabs/quran/sora_name.dart';

class QuranTab extends StatefulWidget{
  @override
  State<QuranTab> createState() => _QuranTabState();
}
class _QuranTabState extends State<QuranTab> {
  List <String> soraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const SizedBox(height: 30,),
          Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/qur2an_screen_logo.png',)),
          const SizedBox(height: 20,),
           Divider(color: Theme.of(context).primaryColor,thickness: 5,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Soura Name', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
           Divider(color: Theme.of(context).primaryColor,thickness: 5,),
          Expanded(
              child: ListView.separated(itemBuilder : (_,index) {
                return SoraName(soraName[index],index);
              },
                itemCount: soraName.length,
                separatorBuilder: (_,index){
                  return Container(color: Theme.of(context).primaryColor,height: 1,margin: EdgeInsets.symmetric(horizontal: 40),);  }

                ,))]);
  }
}