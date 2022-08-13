import 'package:flutter/material.dart';
import 'package:islami/screens/mycolor.dart';
import 'package:islami/screens/sura_name.dart';

class quran extends StatelessWidget {
List<String> suraverse =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
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
    return Container(
      width: double.infinity,
      child: Column(
      children: [
           Image.asset("assets/images/qur2an_screen_logo.png",alignment: Alignment.topCenter,fit: BoxFit.none,),
           Divider(thickness: 3,color: mycolor.primaryColor,),
           Container(
             alignment: Alignment.topCenter,
           width: double.infinity,
             child: Text("SuraName",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
           ),
           Divider(thickness: 3,color: mycolor.primaryColor,),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index){
                return suraname(suraverse[index],index);},
              separatorBuilder:(context,index) {
                return   Divider(thickness: 3,color: mycolor.primaryColor,);},
              itemCount: suraverse.length),
        ),
         ]
        ),
    );
  }
}
