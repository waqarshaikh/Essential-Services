import 'package:essential_services/home.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
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
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: Home(),
      child: Center(
        child: Animator(
          duration: Duration(seconds: 3),
          curve: Curves.easeInToLinear,
          builder: (context, animatorState, child) => FadeTransition(
            opacity: animatorState.animation,
            child: Text("Essential\n\t\t Services",
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.w700,
                  foreground: Paint()..shader = linearGradient,
                )),
          ),
        ),
      ),
    );
  }
}
