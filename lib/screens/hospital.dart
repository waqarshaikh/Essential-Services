import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';
import 'package:essential_services/expantion_panel_bulder.dart';

class Hospital extends StatefulWidget {
  final String dropdownValue;
  Hospital({Key key, @required this.dropdownValue}) : super(key: key);

  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  static List<Item> panvel = <Item>[
    Item(
        headerValue: 'Harish Hospital(Kamothe)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Ashtavinayak Hospital (kanda colony)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Panacea Hospital (New panvel)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Nikam Parmar (Old Panvel)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Jeevan Jyoti Hospital(Kamothe)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Shree Hospital (Kamothe)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Paramount (Old Panvel)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Jayesh Hospital (Old Panvel)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Vaikar (Old Panvel)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Rajiev Hospital (New Panvel East)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> uran = <Item>[
    Item(
        headerValue: 'Indra Ganhdi (Bori)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Sathe Hospital (Seeraj Nagar)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Nakwa (Kotnaka)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Dake Hospital (Seeraj Nagar)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Kale Hospital (Bakshi Complex)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Carepiont (Dronagiri)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "Uran childern hospital (Aanandnagar)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Palvi Hospital(Karanja Road)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Allauddin Hospital (Masjid Mohalla)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Nerekar Hospital (Karanja road)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> belapur = <Item>[
    Item(
        headerValue: 'Palm Beach Hospital (Sector 19)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'Aachariya Shree Nanesh Hospital (Sector 8)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "Navi Mumbai Muncipal hospital (Sector 19)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Apollo Hospital (Sector 23)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "MGM Hospital (Sector 1A)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Alex Hospital (Sector 12)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "JM Hospital (Sector 1)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "H. G. Hospital (Sector 12)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Luckky Hospital (Sector 9)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Simita Hospital (Sector 15)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
  ];
  static List<Item> vashi = <Item>[
    Item(
        headerValue: 'MGM New Bombay (Sector 3)',
        shop: Shop(
            location:
                'Pushpa Kiran , Shop No.3, Plot No.37/A, Manas Complex Rd, Sector 12',
            time: '8:00 AM to 10:00 PM',
            phone: "099201 91194")),
    Item(
        headerValue: 'ESIS Hospital (Sector 9)',
        shop: Shop(
            location: 'Sector-17, Near Railway Station, Slums, Sector 18A',
            time: '8:00 AM to 10:00 PM',
            phone: "098339 75844")),
    Item(
        headerValue: "PCK Hospital (Sector 15A)",
        shop: Shop(
            location:
                'Shop No. 6, Gurudev CHS. Limited, Plot No. 27, Sector 20',
            time: '9:00 AM to 7:00 PM',
            phone: "096194 28894")),
    Item(
        headerValue: "Sterling Wockhardt Hospital (Sector 7)",
        shop: Shop(
            location:
                '97, Panvel Matheran Rd Yamuna Kunj, Panvel Matheran Rd, Yamuna Kunj, Sector-10',
            time: '9:00 AM to 11:00 PM',
            phone: "Not Provided")),
    Item(
        headerValue: "Vinam Swaraj Hospital (Sector 3)",
        shop: Shop(
            location: "Venky's Dealer Advent, Sector 16",
            time: '7:00 AM to 10:00 PM',
            phone: "092241 56451")),
    Item(
        headerValue: "Sajid Chicken Shop (Sector 15)",
        shop: Shop(
            location: "Dwaraka Arcade, Plot No.158, Sector 14, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "090220 24982")),
    Item(
        headerValue: "K. L. Hostital (Sector 15)",
        shop: Shop(
            location: "Uran Naka, Uran Rd",
            time: '10:00 AM to 10:00 PM',
            phone: "098206 69674")),
    Item(
        headerValue: "Mhatre  Hostital (Sector 1)",
        shop: Shop(
            location:
                "Shop No 4 Siddheshwar CHS Plot No 3 Navi Mumbai, Sector 12",
            time: '8:00 AM to 10:00 PM',
            phone: "022 6573 0222")),
    Item(
        headerValue: "Rupesh Hostital (Sector 11)",
        shop: Shop(
            location: "Shivaji Rd, Old Panvel",
            time: '8:00 AM to 10:00 PM',
            phone: "092243 27891")),
    Item(
        headerValue: "Ganesh Hostital (Sector 2)",
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
          'Hospital',
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
