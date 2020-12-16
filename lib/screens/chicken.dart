import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class Chicken extends StatefulWidget {
  Chicken({Key key}) : super(key: key);

  @override
  _ChickenState createState() => _ChickenState();
}

class _ChickenState extends State<Chicken> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'K.G.N. Chicken Shop (Kamothe)',
        shop: Shop(
            location: 'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Star Chicken Shop (New Panvel East)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Belote's Chicken (Kamothe)",
        shop: Shop(
            location: 'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Ekvira Chicken Centre (New Panvel East)",
        shop: Shop(
            location: '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Yogesh Chicken Center (Kamothe)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Sajid Chicken Shop (Kamothe)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Sunny Egg And Chicken Shop (Old Panvel)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "P.Kars Chicken Shop (Kamothe)",
        shop: Shop(
            location: "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Vaikar Chicken Centre (Old Panvel)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Ekvira Chicken Centre (New Panvel East)",
        shop: Shop(
            location: '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),

  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Color headerColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Chicken',
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
