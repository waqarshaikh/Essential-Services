import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class Grocery extends StatefulWidget {
  Grocery({Key key}) : super(key: key);

  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Vishwas Bazar (New Panvel)',
        shop: Shop(
            location: 'Shop No.5/6, Cidco Complex, Sector 1',
            phone: "022 2745 1247",
            time: '9:00 PM to 9:00 PM')),
    Item(
        headerValue: 'Shivam Super Market (Karanjade)',
        shop: Shop(
            location: 'Shop No. 1, 2 & 3, Shiv Shraddha CHS, Plot no 50, Sector 5, 410206',
            phone: "099206 38112",
            time: '8:00 PM to 10:00 PM')),
    Item(
        headerValue: 'Food Market (Khanda Colony)',
        shop: Shop(
            location: 'Shop No - 14,15,16 , Sai Sharan, Citi Park Rd, Sector - 8',
            phone: "099200 84249",
            time: '10:00 PM to 10:00 PM')),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Color headerColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Grocery',
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
                return ExpantionPanelBuilder()
                    .builder(context, headerColor, item);
              }).toList())
        ],
      ),
    );
  }
}
