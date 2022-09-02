import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/screens/mycolor.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
int count = 0 ;

String Show ="سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width*0.85,
      height: MediaQuery.of(context).size.height*0.75,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
        child: Column(
          children: [
            RotationTransition(turns: AlwaysStoppedAnimation(15/360),
              child:Image.asset("assets/images/body_sebha_logo.png",fit: BoxFit.fill,centerSlice: Rect.largest,),),

            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                child: Text("$count",style:
                TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
                child: Text("$Show",style:
                TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold,),textDirection: TextDirection.rtl,)),
            Spacer(),
           FloatingActionButton(
              onPressed: (){
                clicked();

              },
              child:  Icon(Icons.add,color: mycolor.primaryColor,),
              backgroundColor: Colors.white,
              elevation: 30,
              shape:  StadiumBorder(
                  side: BorderSide(color: mycolor.primaryColor,width: 4)
              ),
            ),

          ],
        ),
    )
      ],
    );

  }

  void clicked() {
    count++;
      if(count<=33){
    Show ="سبحان الله";
      }else if(count<=66){
    Show = "الحمد لله";
      }else if (count<=99){
    Show ="الله أكبر";
     }else if (count ==100){
    Show = "لا حول ولا قوم الا بالله العلى العظيم";
    count = 0;
  } setState(() {
      });
  }
}
