import 'package:flutter/material.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/text_splash.dart';
import 'package:islami/screens/suraversedetalis.dart';
void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 15),(){
    //  Navigator.pushNamed(context, home.routename,arguments:textsplash() );
    //});

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        home.routename: (_) => home(),
        textsplash.routename: (_) => textsplash(),
        suraversedetalis.routename: (_) => suraversedetalis(),
      },
      initialRoute: home.routename,
    );
  }
}
