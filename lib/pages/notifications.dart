// ignore: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

class MyNotificationsPage extends StatefulWidget {
  @override
  _MyNotificationsPageState createState() => _MyNotificationsPageState();
}

class _MyNotificationsPageState extends State<MyNotificationsPage> {
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
          ListTile(
            title: Text(
              "Notifications",
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
          ListTile(
            leading:
                Icon(Icons.notifications_active, color: Colors.yellow[800]),
            title: Text(
              "Welcome to Northway Delivery Services",
              style: TextStyle(
                color: Colors.indigo[900],
              ),
            ),
          ),
          Divider(
            color: Colors.yellow[800],
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_active, color: Colors.yellow[800]),
            title: Text(
              "Take a quick survey on the Application",
              style: TextStyle(
                color: Colors.indigo[900],
              ),
            ),
          ),
          Divider(
            color: Colors.yellow[800],
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_active, color: Colors.yellow[800]),
            title: Text(
              "Account Successfully, Go and Order Now",
              style: TextStyle(
                color: Colors.indigo[900],
              ),
            ),
          ),
          Divider(
            color: Colors.yellow[800],
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_active, color: Colors.yellow[800]),
            title: Text(
              "Shop at a Discount of 30% OFF",
              style: TextStyle(
                color: Colors.indigo[900],
              ),
            ),
          ),
          Divider(
            color: Colors.yellow[800],
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_active, color: Colors.yellow[800]),
            title: Text(
              "Oders Placed Successfully",
              style: TextStyle(
                color: Colors.indigo[900],
              ),
            ),
          ),
          Divider(
            color: Colors.yellow[800],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.yellow[800]),
                child: Text(
                  "Clear All",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
              ),
            ],
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
