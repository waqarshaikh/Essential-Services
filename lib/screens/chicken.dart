import 'package:flutter/material.dart';

class Chicken extends StatefulWidget {
  Chicken({Key key}) : super(key: key);

  @override
  _ChickenState createState() => _ChickenState();
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

class _ChickenState extends State<Chicken> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Shop 1',
        expandedValue: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Time: 9:00 AM to 8:00 PM',
                style: CustomTextStyle.textSize,
              ),
              Text(
                'Rate: Rs. 100',
                style: CustomTextStyle.textSize,
              ),
              Text(
                'Location: ABC',
                style: CustomTextStyle.textSize,
              )
            ],
          ),
        )),
    Item(
        headerValue: 'Shop 2',
        expandedValue: Column(
          children: <Widget>[
            Text(
              'Time: 9:00 AM to 8:00 PM',
              style: CustomTextStyle.textSize,
            ),
            Text(
              'Rate: Rs. 100',
              style: CustomTextStyle.textSize,
            ),
            Text(
              'Location: ABC',
              style: CustomTextStyle.textSize,
            )
          ],
        )),
    Item(
        headerValue: 'Shop 3',
        expandedValue: Column(
          children: <Widget>[
            Text(
              'Time: 9:00 AM to 8:00 PM',
              style: CustomTextStyle.textSize,
            ),
            Text(
              'Rate: Rs. 100',
              style: CustomTextStyle.textSize,
            ),
            Text(
              'Location: ABC',
              style: CustomTextStyle.textSize,
            )
          ],
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken'),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Text(
                        item.headerValue,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      );
                    },
                    isExpanded: item.isExpanded,
                    body: Container(
                      child: item.expandedValue,
                      padding: EdgeInsets.all(8.0),
                    ));
              }).toList())
        ],
      ),
    );
  }
}
