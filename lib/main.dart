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


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  "textsplash",
      routes: {
        "home" : (_) => home(),
        "textsplash": (_) => textsplash(),
        "suraversedetalis": (_) => suraversedetalis(),
      },

    );
  }
}
