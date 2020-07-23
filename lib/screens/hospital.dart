import 'package:flutter/material.dart';

class Hospital extends StatefulWidget {
  Hospital({Key key}) : super(key: key);

  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hospital'),),
    );
  }
}