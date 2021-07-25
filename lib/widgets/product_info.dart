import 'package:flutter/material.dart';
import 'package:northway_delivery/widgets/cart_info.dart';

class ProductInfoPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/ecommerce_detail2.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset(
                "assets/images/pd1.jpg",
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Row(
                  children: <Widget>[
                    
                    Expanded(
                        child: buildDropdownButton(['1', '2', '3', '4'], '1')),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  "FRIED RICE",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  "AFRICAN POT",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                ),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      
                    ],
                  )),
                  Text("\GHC 20",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30.0,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text("Description",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.indigo[900]))),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.indigo[900]),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AppBar(
                iconTheme: IconThemeData(color: Colors.indigo[900]),
                brightness: Brightness.light,
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Colors.yellow[800],
                      elevation: 0,
                      onPressed: () {
                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartInfoPage()),
              );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Add to cart",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
