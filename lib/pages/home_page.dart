// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/state_manager.dart';
import 'package:northway_delivery/controllers/productcontroler.dart';

//  flutter run --no-sound-null-safety
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ProductController productController = (ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        backgroundColor: Colors.white,
        child: Icon(Icons.call, color: Colors.yellow[900]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "NorthWay Delivery",
          style: TextStyle(color: Colors.indigo[900], fontSize: 21),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.indigo[900]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.indigo[900]),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: ListView(
              children: [
                SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Carousel(
                        dotSize: 4,
                        dotSpacing: 15,
                        dotColor: Colors.indigo[900],
                        indicatorBgPadding: 5,
                        dotBgColor: Colors.transparent,
                        dotVerticalPadding: 5,
                        dotPosition: DotPosition.bottomRight,
                        images: [
                          Image.asset("assets/images/c1.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c2.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c3.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c4.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c5.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c6.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c7.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c8.png",
                              fit: BoxFit.cover),
                          Image.asset("assets/images/c1.png",
                              fit: BoxFit.cover),
                        ]))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            color: Colors.yellow[800],
            child: Text(
              "OUR PARTNERS",
              style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/p1.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                Image.asset("assets/images/p2.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                Image.asset("assets/images/p3.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                Image.asset("assets/images/p4.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                Image.asset("assets/images/p5.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                Image.asset("assets/images/p6.png",
                    height: 50, width: 50, fit: BoxFit.cover),
              ]),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            color: Colors.yellow[800],
            child: Text(
              "FEATURED PRODUCTS",
              style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Obx(()
                          => StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      width: 100,
                      color: Colors.yellow[800],
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("North Way"),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow[900],
                child: Text(
                  "N W",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow[900],
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.indigo[800]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.yellow[900]),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.indigo[800]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts, color: Colors.yellow[900]),
              title: Text(
                "Contact Us",
                style: TextStyle(color: Colors.indigo[800]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.yellow[900]),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.indigo[800]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.power_input, color: Colors.yellow[900]),
              title: Text(
                "Powered by NORTHWAY DEV.",
                style: TextStyle(color: Colors.indigo[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
