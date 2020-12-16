import 'package:essential_services/item.dart';
import 'package:flutter/material.dart';

class ExpantionPanelBuilder {
  BuildContext context;
  Color headerColor;
  Item item;

  ExpansionPanel builder(BuildContext context, Color headerColor, Item item) {
    return ExpansionPanel(
        canTapOnHeader: true,
        headerBuilder: (BuildContext context, bool isExpanded) {
          headerColor = isExpanded ? Colors.blue : Colors.black;
          return Container(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
            child: Text(
              item.headerValue,
              style: TextStyle(
                fontSize: 25.0,
                color: headerColor,
              ),
              textAlign: TextAlign.center,
            ),
          );
        },
        isExpanded: item.isExpanded,
        body:  item.rowBuilder(context),);
  }
}
