import 'package:essential_services/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class LogoAnimation extends StatefulWidget {
  LogoAnimation({Key key}) : super(key: key);

  @override
  _LogoAnimationState createState() => _LogoAnimationState();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[Colors.deepPurple[700], Colors.purple, Colors.blue],
).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 50.0));

class _LogoAnimationState extends State<LogoAnimation> {
  double opacity = 0.0;
  int duration = 2;

  List<dynamic> textList = [
    singleText('E\n'),
    singleText('s\n'),
    singleText('s\ns'),
    singleText('e\ne'),
    singleText('n\nr'),
    singleText('t\nv'),
    singleText('i\ni'),
    singleText('a\nc'),
    singleText('l\ne'),
    singleText('\ns')
  ];

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: Home(),
      child: Center(
        child: AnimatedOpacity(
          opacity: 1.0,
          duration: Duration(seconds: 2),
          child: Text("Essential\n\t\t Services",
              style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.w700,
                foreground: Paint()..shader = linearGradient,
              )),
        )
      ),
    );
  }

  void animationBuilder() {
    for (var text in textList) {
      this.opacity = 1.0;
       AnimatedOpacity(
        opacity: opacity,
        duration: Duration(seconds: duration),
        child: text,
      );
    }
  }

  static Text singleText(String text) {
    return Text(text,
        style: TextStyle(
          fontSize: 70.0,
          fontWeight: FontWeight.w700,
          foreground: Paint()..shader = linearGradient,
        ));
  }
}