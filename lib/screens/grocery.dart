import 'package:flutter/material.dart';

class Grocery extends StatefulWidget {
  Grocery({Key key}) : super(key: key);

  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grocery'),),
    );
  }
}