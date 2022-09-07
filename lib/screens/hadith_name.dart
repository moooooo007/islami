import 'package:flutter/material.dart';
import 'package:islami/screens/suraversedetalis.dart';
class hadithname extends StatelessWidget {
  String hadeethname;
  int index;
  hadithname(this.hadeethname, this.index);
  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context,suraversedetalis.routename,
                  arguments: suradetaliargm(
                      surraname: "$hadeethname", filename: "${index + 1}.txt"));
            },
            child: Text(
              "${hadeethname}",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            )),
      );


  }
}
