import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';

class Item {
  Item({this.isExpanded = false, this.headerValue, this.shop});

  bool isExpanded;
  Shop shop;
  String headerValue;

  Widget rowBuilder(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Image(
              image: AssetImage('lib/assets/images/wall-clock.png'),
              height: 35.0,
              width: 35.0,
            ),
            title: customText(text: 'Time: ', context: context),
            subtitle: customText(text: shop.time, context: context),
          ),
        ),
        Card(
          child: ListTile(
            leading: Image(
              image: AssetImage('lib/assets/images/pin.png'),
              height: 35.0,
              width: 35.0,
            ),
            title: customText(text: 'Location: ', context: context),
            subtitle: customText(text: shop.location, context: context),
          ),
        ),
        // Card(
        //   child: ListTile(
        //     leading: Image(
        //       image: AssetImage('lib/assets/images/rupee.png'),
        //       height: 35.0,
        //       width: 35.0,
        //     ),
        //     title: customText(text: 'Rate: ', context: context),
        //     subtitle: customText(text: shop.rate, context: context),
        //   ),
        // ),
        Card(
          child: ListTile(
            leading: Image(
              image: AssetImage('lib/assets/images/phone-call.png'),
              height: 35.0,
              width: 35.0,
            ),
            title: customText(text: 'Phone: ', context: context),
            subtitle: customText(text: shop.phone, context: context),
          ),
        ),
        Center(
          child: MaterialButton(onPressed: () {}, color: Colors.blue,child: Text('More info',style: TextStyle(color: Colors.white),),),
        ),
        SizedBox(height: 10.0,),
      ],
    );

    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Row(
    //           children: <Widget>[
    //             Image(
    //               image: AssetImage('lib/assets/images/wall-clock.png'),
    //               height: 20.0,
    //               width: 20.0,
    //             ),
    //             customText(text: 'Time: ', context: context),
    //           ],
    //         ),
    //         Row(
    //           children: <Widget>[
    //             Image(
    //               image: AssetImage('lib/assets/images/rupee.png'),
    //               height: 20.0,
    //               width: 20.0,
    //             ),
    //             customText(text: 'Rate: ', context: context),
    //           ],
    //         ),
    //         Row(
    //           children: <Widget>[
    //             Image(
    //               image: AssetImage('lib/assets/images/pin.png'),
    //               height: 20.0,
    //               width: 20.0,
    //             ),
    //             customText(text: 'Location: ', context: context),
    //           ],
    //         ),
    //       ],
    //     ),
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         customText(text: shop.time, context: context),
    //         customText(text: shop.rate, context: context),
    //         customText(text: shop.location, context: context),
    //       ],
    //     ),
    //   ],
    // );
  }
}

Text customText({text, context}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 6,
        fontWeight: FontWeight.normal),
  );
}
