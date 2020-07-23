import 'package:flutter/material.dart';

class Fish extends StatefulWidget {
  Fish({Key key}) : super(key: key);

  @override
  _FishState createState() => _FishState();
}

class _FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fish'),),
    );
  }
}