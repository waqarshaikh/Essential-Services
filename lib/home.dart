import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var services = ["Chicken", "Hospital", "Milk", "Medical", "Grocery", "Fish"];

  var images = [
    'assets/images/chicken.png',
    'assets/images/hospital.png',
    'assets/images/milk-bottle.png',
    'assets/images/pill.png',
    'assets/images/grocery.png',
    'assets/images/seafood.png'
  ];

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.deepPurple[700], Colors.purple, Colors.blue],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 50.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
      ),
      body: Column(
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
                      Text("Uran", style: TextStyle(fontSize: 20.0)),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text("Essential Services",
                        style: TextStyle(
                          fontSize: 35.0,
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
                      child: Column(
                        children: <Widget>[
                          InkResponse(
                            highlightShape: BoxShape.rectangle,
                            containedInkWell: true,
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
                                )
                              ],
                            ),
                            onTap: () {
                              print(index);
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
