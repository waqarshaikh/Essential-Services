import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  Medical({Key key}) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class Item {
  Item({this.isExpanded = false, this.headerValue, this.expandedValue});

  bool isExpanded;
  Widget expandedValue;
  String headerValue;
}

class CustomTextStyle {
  static var textSize = TextStyle(fontSize: 30.0,fontWeight: FontWeight.normal);
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical'),),
    );
  }
}