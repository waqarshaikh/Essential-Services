import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class WaterSupply extends StatefulWidget {
  WaterSupply({Key key}) : super(key: key);

  @override
  _WaterSupplyState createState() => _WaterSupplyState();
}

class _WaterSupplyState extends State<WaterSupply> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Shop 1 (Location)',
        shop: Shop(
            location: 'Uran Market',
            phone: "096658 88599",
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Shop 2 (Location)',
        shop: Shop(
            location: 'Uran Market',
            phone: "096658 88599",
            time: '10:00 PM to 7:00 PM')),
    Item(
        headerValue: 'Shop 3 (Location)',
        shop: Shop(
            location: 'Uran Market',
            phone: "096658 88599",
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
          'Water Supply',
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
