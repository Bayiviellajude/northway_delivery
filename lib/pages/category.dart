// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';

class MyCategory extends StatefulWidget {
  @override
  _MyCategoryState createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.yellow[800],
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c1.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c2.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c3.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c4.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c5.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c6.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c7.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c8.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 380,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/c1.png",
                    height: 50, width: 50, fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
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
