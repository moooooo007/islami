import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class suraversedetalis extends StatelessWidget {
 static const routename = "suraversedetalis";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as suradetaliargm;
    return
      Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text("hi"),
            )
          ],
        ),
    );

  }
}
class suradetaliargm {
  String surraname;
  String filename ;
  suradetaliargm({required this.surraname,required this.filename});
}
