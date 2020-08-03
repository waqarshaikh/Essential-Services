import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';

class Milk extends StatefulWidget {
  Milk({Key key}) : super(key: key);

  @override
  _MilkState createState() => _MilkState();
}

class _MilkState extends State<Milk> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Shop 1',
        shop: Shop(
            location: 'Uran Market',
            rate: 'Rs. 100',
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Shop 2',
        shop: Shop(
            location: 'Uran Market',
            rate: 'Rs. 200',
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Shop 3',
        shop: Shop(
            location: 'Uran Market',
            rate: 'Rs. 150',
            time: '10:00 PM to 7:00 PM')),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Color headerColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Milk',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      headerColor = isExpanded ? Colors.blue : Colors.black;
                      return Container(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          item.headerValue,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: headerColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    isExpanded: item.isExpanded,
                    body: Container(
                      child: item.rowBuilder(context),
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    ));
              }).toList())
        ],
      ),
    );
  }
}
