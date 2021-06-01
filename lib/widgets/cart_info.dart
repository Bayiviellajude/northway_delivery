import 'package:flutter/material.dart';

class CartInfoPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/cart2.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "My Cart",
            style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, int index) {
                  return cartItems(index);
                },
              ),
            ),
            _checkoutSection()
          ],
        ));
  }

  Widget cartItems(int index) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.all(10),
          height: 130,
          child: Row(
            children: <Widget>[
              Container(
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/p4.png",
                  ),
                )),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 10,
                        thickness: 10,
                        color: Colors.yellow[800],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "FRIED RICE",
                              overflow: TextOverflow.fade,
                              softWrap: true,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.indigo[900]),
                            ),
                          ),
                          Container(
                            width: 50,
                            child: IconButton(
                              onPressed: () {
                                print("Button Pressed");
                              },
                              color: Colors.red,
                              icon: Icon(Icons.delete),
                              iconSize: 20,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Price: ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.indigo[900]),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '\$200',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.indigo[900]),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.redAccent.shade200,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.redAccent,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('2'),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.lightBlue,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.yellow[800]),
          title: Text(
            "USE A VOUCHER CODE",
            style: TextStyle(
              color: Colors.indigo[900],
            ),
          ),
        ),
        TextField(
            decoration: new InputDecoration(
                labelText: "Enter Voucher Code...",
                suffixIcon: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.yellow[900],
                    )),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: const BorderSide(color: Colors.indigo)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.indigo))))
      ],
    );
  }

  Widget _checkoutSection() {
    return Material(
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Checkout Price:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.indigo[900]),
                  ),
                  Spacer(),
                  Text(
                    "\$ 200",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[900]),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              color: Colors.yellow[800],
              elevation: 1.0,
              child: InkWell(
                splashColor: Colors.greenAccent,
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Pay On Delivery",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
