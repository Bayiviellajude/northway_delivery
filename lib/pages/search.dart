// ignore: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

class MySearchPage extends StatefulWidget {
  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
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
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Search",
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
          SizedBox(
            height: 10,
          ),
          TextField(
              decoration: new InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.yellow[800],
                  ),
                  labelText: "search for products...",
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: const BorderSide(color: Colors.indigo)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.indigo)))),
          SizedBox(
            height: 10,
          ),
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
