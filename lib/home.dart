import 'package:essential_services/screens/fire_and_safety.dart';
import 'package:essential_services/screens/restaurant.dart';
import 'package:essential_services/screens/water_supply.dart';
import 'screens/chicken.dart';
import 'screens/hospital.dart';
import 'screens/medical.dart';
import 'screens/milk.dart';
import 'package:flutter/material.dart';
import 'screens/fish.dart';
import 'screens/grocery.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var services = [
    "Chicken",
    "Hospital",
    "Milk",
    "Medical",
    "Grocery",
    "Fish",
    "Restaurant",
    "Water Supply",
    "Fire and Safety",
    "Dummy"
  ];

  var images = [
    'lib/assets/images/chicken.png',
    'lib/assets/images/hospital.png',
    'lib/assets/images/milk-bottle.png',
    'lib/assets/images/pill.png',
    'lib/assets/images/grocery.png',
    'lib/assets/images/seafood.png',
    'lib/assets/images/restaurant.png',
    'lib/assets/images/water.png',
    'lib/assets/images/alert.png',
    'lib/assets/images/comming.png',
  ];

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.deepPurple[700], Colors.purple, Colors.blue],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 50.0));

  void navigator(dynamic navigateTo, BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => navigateTo));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        left: false,
        top: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 30.0,
                          color: Colors.red,
                        ),
                        Text("Panvel", style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text("Essential Services",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            foreground: Paint()..shader = linearGradient,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: GridView.builder(
                    itemCount: services.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shadowColor: Colors.blue,
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            switch (index) {
                              case 0:
                                navigator(Chicken(), context);
                                break;
                              case 1:
                                navigator(Hospital(), context);
                                break;
                              case 2:
                                navigator(Milk(), context);
                                break;
                              case 3:
                                navigator(Medical(), context);
                                break;
                              case 4:
                                navigator(Grocery(), context);
                                break;
                              case 5:
                                navigator(Fish(), context);
                                break;
                              case 6:
                                navigator(Restaurant(), context);
                                break;
                              case 7:
                                navigator(WaterSupply(), context);
                                break;
                              case 8:
                                navigator(FireAndSafety(), context);
                                break;
                              default:
                            }
                            print(index);
                          },
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 22.0),
                              Image.asset(images[index],
                                  height: 80.0, width: 80.0),
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  services[index],
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
