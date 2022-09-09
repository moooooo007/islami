
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moudle/hadith.dart';
import 'package:islami/screens/mycolor.dart';

class hadeth extends StatefulWidget {
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
List <hadith> ahadeeth = [];

  @override
  Widget build(BuildContext context) {
  if (ahadeeth.isEmpty){ readahadith();};
    return
      ahadeeth.isNotEmpty?
      Column(
          children: [
            Image.asset("assets/images/hadeth_logo.png",alignment: Alignment.topCenter,fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height*.25,
              width:MediaQuery.of(context).size.width*.3 ,
            ),
            Divider(thickness: 3,color: mycolor.primaryColor,),
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              child: Text("Ahadith Names",
                style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            ),
            Divider(thickness: 3,color: mycolor.primaryColor,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "hadithname",arguments:ahadeeth[index]);
                      },
                      child: Text(ahadeeth[index].hadithtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                    );},
                  separatorBuilder:(context,index) {
                    return   Divider(thickness: 3,color: mycolor.primaryColor,);},
                  itemCount: ahadeeth.length),
            ),
          ]
      )
          : Center(child: CircularProgressIndicator());
  }

void readahadith ()async{
String ahadith =await rootBundle.loadString("assets/files/ahadeth.txt");
List hadiithcontent = ahadith.split("#\r\n");
for (int i=0;i<hadiithcontent.length;i++) {
  String ahadithcontent = hadiithcontent[i];
  List <String> ahadethhead = ahadithcontent.split("\n");
  String title = ahadethhead[0];
  hadiithcontent.remove(0);
  hadith Hadith = new hadith(hadithtitle: title, hadithcontent: ahadethhead);
  this.ahadeeth.add(Hadith);
}
setState(() {
  });
}
}
