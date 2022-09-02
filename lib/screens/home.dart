import 'package:flutter/material.dart';
import 'package:islami/screens/Sebha_tab.dart';
import 'package:islami/screens/hadeth_tab.dart';
import 'package:islami/screens/mycolor.dart';
import 'package:islami/screens/quran_tab.dart';
import 'package:islami/screens/radio_tab.dart';

class home extends StatefulWidget {
static var routename ="home";

  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
int currentindex = 0 ;
List <Widget> tab = [quran(),hadeth(),radio(),sebha()];
    @override
    Widget build(BuildContext context) {

    return
      Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(elevation: 20,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text("Islami",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
          ),
          body:(
             tab[currentindex]
          ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: mycolor.primaryColor),
          child: BottomNavigationBar(
            onTap: (currenttab){
              currentindex=currenttab;
              setState(() {
              });
            },
              selectedItemColor: Colors.black,
              selectedLabelStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              selectedIconTheme: const IconThemeData(color: Colors.black),
              unselectedIconTheme:const IconThemeData(color: Colors.white) ,
              currentIndex: currentindex,
              items: const [
           BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label:"quran"),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label:"Hadith"),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label:"Radio"),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label:"Sebha"),
          ],

          ),
        ),
        ),
          );
    }
}
