import 'dart:async';

import 'package:essential_services/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[Colors.deepPurple[700], Colors.purple, Colors.blue],
).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 50.0));

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  List<AnimationController> acs = new List<AnimationController>();
  List<Text> title = List<Text>();

  @override
  void initState() {
    String phrase = "Essential\nServices";
    List<String> strings = phrase.split('');

    for (var c in strings) {
      title.add(Text(c,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            foreground: Paint()..shader = linearGradient,
          )));
    }
    //Some values that seem to work well
    //animationTime = 600 and animationDelay = 200
    //animationTime = 500 and animationDelay = 250
    //animationTime = 400 and animationDelay 270

    //sets how many milliseconds the fade animation for the first character will last
    int animationTime = 400;
    //sets how much longer each next character's fade animation will last
    int animationDelay = 270;

    for (int i = 0; i < title.length; i++) {
      acs.add(AnimationController(
          vsync: this,
          duration: Duration(milliseconds: animationTime += animationDelay)));
      acs[i].forward();
    }

    Timer(Duration(milliseconds: animationTime), () {
       Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (BuildContext context) => Home()));
     });
    super.initState();
  }

  @override
  void dispose() {
    for (var ac in acs) {
      ac.dispose();
    }
    super.dispose();
  }

  List<FadeTransition> getFadeTransitions() {
    List<FadeTransition> fadeLetters = new List<FadeTransition>();

    for (int i = 0; i < title.length; i++) {
      FadeTransition ft =
          FadeTransition(opacity: acs[i], child: Center(child: title[i]));
      fadeLetters.add(ft);
    }
    return fadeLetters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: getFadeTransitions(),
      ),
    );
  }
}
