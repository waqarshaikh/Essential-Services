import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class Restaurant extends StatefulWidget {
  Restaurant({Key key}) : super(key: key);

  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Restaurant 1 (Location)',
        shop: Shop(
            location: 'Uran Market',
            rate: 'Rs. 100',
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Restaurant 2 (Location)',
        shop: Shop(
            location: 'Uran Market',
            rate: 'Rs. 200',
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Restaurant 3 (Location)',
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
          'Restaurant',
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
