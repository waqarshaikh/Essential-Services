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
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              item.headerValue,
              style: TextStyle(
                fontSize: 30.0,
                color: headerColor,
              ),
              textAlign: TextAlign.center,
            ),
          );
        },
        isExpanded: item.isExpanded,
        body: Container(
          child: item.rowBuilder(context),
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        ));
  }
}
