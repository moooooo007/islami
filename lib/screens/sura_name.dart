import 'package:flutter/material.dart';
import 'package:islami/screens/mycolor.dart';
import 'package:islami/screens/suraversedetalis.dart';
class suraname extends StatelessWidget {
  String Suuranames;
  int index;
  suraname(this.Suuranames, this.index);
  @override
  Widget build(BuildContext context) {
    return
      Container(
      alignment: Alignment.center,
      child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, suraversedetalis.routename,
                arguments: suradetaliargm(
                    surraname: "$suraname", filename: "${index + 1}.txt"));
          },
          child: Text(
            "${Suuranames}",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          )),
    );
  }
}
