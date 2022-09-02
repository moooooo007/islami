import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/screens/mycolor.dart';

class suraversedetalis extends StatefulWidget {
  static var routename = "suraversedetalis";

  @override
  State<suraversedetalis> createState() => _suraversedetalisState();
}

class _suraversedetalisState extends State<suraversedetalis> {
  List <String> Sura = [];
  String content = "";
  @override
  Widget build(BuildContext context) {
      var args = ModalRoute.of(context)!.settings.arguments as suradetaliargm;
      if (Sura.isEmpty) readfile(args.filename);
      return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/default_bg.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor:Colors.transparent ,
              title: Text(args.surraname,
                style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold,),
            )),
            body:Sura.isEmpty ? const Center(child: CircularProgressIndicator()) : 
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.8,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child:ListView.separated(
                      itemBuilder: (context, index) {
                        return
                          Text("${Sura[index]}(${index+1})",
                            style: const TextStyle(fontSize: 20,color: Colors.indigo),textDirection: TextDirection.rtl,);
                      },
                      separatorBuilder:(context,index) {
                        return  Divider(thickness: 3,color: mycolor.primaryColor,);},
                      itemCount: Sura.length),
                )
              ],
            )));
  }

  void readfile (String filename) async{
     content = await rootBundle.loadString("assets/files/$filename");
     Sura = content.split("\n");
      setState(() {

     });
  }
}

class suradetaliargm {
  String surraname;
  String filename;
  suradetaliargm({required this.surraname, required this.filename});
}
