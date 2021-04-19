import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class Chicken extends StatefulWidget {
  final String dropdownValue;
  Chicken({Key key, @required this.dropdownValue}) : super(key: key);

  @override
  _ChickenState createState() => _ChickenState();
}

class _ChickenState extends State<Chicken> {
  static List<Item> panvel = <Item>[
    Item(
        headerValue: 'K.G.N. Chicken Shop (Kamothe)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
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
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Ekvira Chicken Centre (New Panvel East)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
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
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
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
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> uran = <Item>[
    Item(
        headerValue: 'Nilesh Chicken Shop (Nagaon)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Chicken Vicken Uran (Uran market)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Chicken & Mutton Shop (Kegaon)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Junaid Chicken Shop (Charphata)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Ayan Chicken Shop (Karanja)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Raza chicken &egg sapphires (Balai Road)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Bharat Chicken Center (Mhatwali)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Rajesh Mutton Shop (Kotnaka)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "KGN Chicken (Bhawara)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Sajid Chicken and Mutton (Uran Market)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> belapur = <Item>[
    Item(
        headerValue: 'Mayur chicken shop (sector 2)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Sultan Chicken (Sector 5)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Babu boiler (Sector 11)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "5 star chicken shop (Sector 15)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Barkat chicken shop(Sector 15)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Taj Chicken Shop (Sector 19)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Kalim Chicken Shop (Sector 19A)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Supper Chicken Shop (Sector 4)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Bromark (Sector 15)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Bristen Chicken shop (Sector 15)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> vashi = <Item>[
    Item(
        headerValue: 'Maharashtra Chicken Shop (Sector 19)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Express Chicken Shop (Sector 12)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "A1 Mutton Chicken (Sector1)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Farmhouse Chicken Houe (Sector 1)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Farmchoice Chicken (Sector 9)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "New Mumbai Chicken Shop (Sector 11)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Kopri Chicken Shop (Sector 12)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Sona Chicken Shop (Sector 3)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Girirsh Chicken (Sector 17)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Ekvira Chicken Centre (Sector 3)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];

  var locations = {
    'Panvel': panvel,
    'Uran': uran,
    'Belapur': belapur,
    'Vashi': vashi,
  };

  @override
  Widget build(BuildContext context) {
    var _items = locations[widget.dropdownValue];
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
