import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textsplash extends StatefulWidget {

  static const String routename = "textsplash";
  @override
  State<textsplash> createState() => _textsplashState();
}

class _textsplashState extends State<textsplash> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 8),(){
      Navigator.pushNamed(context, "home" );
    });
    return
      Container(
        width:  double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
                fit: BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Islami App',
                textStyle: const TextStyle(
                  fontSize: 35.0,color: Colors.black,
                  fontWeight: FontWeight.bold,
                    ),
                speed: const Duration(milliseconds: 500),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      );

  }
}
