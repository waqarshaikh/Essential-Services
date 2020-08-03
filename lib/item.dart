import 'package:essential_services/screen_config.dart';
import 'package:essential_services/shop.dart';
import 'package:flutter/material.dart';

class Item {
  Item({this.isExpanded = false, this.headerValue, this.shop});

  bool isExpanded;
  Shop shop;
  String headerValue;

  Widget rowBuilder(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            customText(text: 'Time: ', context: context),
            customText(text: 'Rate: ', context: context),
            customText(text: 'Location: ', context: context),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            customText(text: shop.time, context: context),
            customText(text: shop.rate, context: context),
            customText(text: shop.location, context: context),
          ],
        ),
      ],
    );
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