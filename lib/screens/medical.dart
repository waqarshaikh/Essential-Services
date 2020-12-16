import 'package:essential_services/item.dart';
import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';

import '../expantion_panel_bulder.dart';

class Medical extends StatefulWidget {
  Medical({Key key}) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  List<Item> _items = <Item>[
    Item(
        headerValue: 'Apollo Pharmacy (Khanda Colony)',
        shop: Shop(
            location: 'Alot no 19, No 7, Ridhi Complex & 20 Khanda Colony, Sector 13, 20, Khanda Colony, Sector - 1',
            time: '10:00 AM to 11:00 PM',
            phone: "077009 50216")),
    Item(
        headerValue: 'Mayur Medical & General Stores (Forest Colony)',
        shop: Shop(
            location: 'Shop No.7 Charisma Corner Near Sai Mandir, Panvel Railway Station Road',
            time: '10:00 AM to 10:00 PM',
            phone: "096658 88599")),
    Item(
        headerValue: 'Shreekant Pharma (Takka)',
        shop: Shop(
            location: 'Shop NO.11,National Palace C.H.S.,Takka, -410206',
            time: '10:00 AM to 12:00 AM',
            phone: "096658 88599")),
    Item(
        headerValue: 'Wellness Forever (Shivaji Rd)',
        shop: Shop(
            location: 'Virupaksha Art, Shop No 1 And 3',
            time: 'Open 24 hours',
            phone: "022 2745 1577")),
    Item(
        headerValue: 'Yogeshwar Chemist & General Store (New Panvel East)',
        shop: Shop(
            location: 'Shop Number.17, Sai Arcade, opposite Railway Station, Sector 15A',
            time: '8:00 AM to 10:30 PM',
            phone: "Not Provided")),   
    Item(
        headerValue: 'Metro Chemist (Khanda Colony)',
        shop: Shop(
            location: 'Sector - 13, Khanda Colony',
            time: '9:00 AM to 12:00 PM',
            phone: "022 2748 0020")),
    Item(
        headerValue: 'Health care chemist (HOC Colony)',
        shop: Shop(
            location: 'Nityanand Nagar, Old Panvel, Swami Nityanand Rd',
            time: 'Open 24 hours',
            phone: "Not Provided")),
    Item(
        headerValue: 'Bhavna Chemist (New Panvel East)',
        shop: Shop(
            location: 'Neel Castal Complex, Shop No.9, Plot No.54, Sector-3, Sector-9',
            time: '8:30 AM to 11:30 PM',
            phone: "022 2749 0020")),  
    Item(
        headerValue: 'Shree Sai Medical and General Stores (HOC Colony)',
        shop: Shop(
            location: 'BHAIJI Society Shop No 2 Swami Nityanand Road Opp Taluka Police Station',
            time: '9:30 AM to 11:30 PM',
            phone: "098200 94941")), 
    Item(
        headerValue: 'ROYAL HOMOEO PHARMACY (Kamothe)',
        shop: Shop(
            location: 'Plot no 8A, Om Shivam Residency, Shop no.7, 9, Sector - 17',
            time: '9:30 AM to 9:00 PM',
            phone: "090222 75937")),       
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Color headerColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Medical',
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
