import 'package:flutter/material.dart';
import 'package:islami/moudle/hadith.dart';
import 'package:islami/screens/mycolor.dart';
class hadithname extends StatelessWidget {
  static var routename = "hadithname";
  @override
  Widget build(BuildContext context) {
    hadith Hadith = ModalRoute.of(context)!.settings.arguments as hadith;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/default_bg.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              title: Text(
                "Hadith",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )),
          body: Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.8,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text(
                    Hadith.hadithcontent[index] ,
                    style: const TextStyle(fontSize: 20, color: Colors.indigo),
                    textDirection: TextDirection.rtl,
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 3,
                    color: mycolor.primaryColor,
                  );
                },
                itemCount: Hadith.hadithcontent.length),
          ),
        ));
  }
}
