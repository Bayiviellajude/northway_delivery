import 'package:flutter/material.dart';

import 'package:northway_delivery/pages/sign_up.dart';

Color orangeColors = Color(0xffF5591F);
Color orangeLightColors = Color(0xffF2861E);

class LoginPageFourteen extends StatefulWidget {
  static final String path = "lib/src/pages/login/login14.dart";
  @override
  _LoginPageFourteenState createState() => _LoginPageFourteenState();
}

class _LoginPageFourteenState extends State<LoginPageFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/w3.jpg"), fit: BoxFit.cover)),
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Northway Delivery"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        hint: "Phone Number",
                        style: TextStyle(
                          color: Colors.indigo[900],
                        ),
                        icon: Icons.call),
                    _textInput(
                        hint: "Password",
                        style: TextStyle(
                          color: Colors.indigo[900],
                        ),
                        icon: Icons.vpn_key),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[900], //background color of button
                  side: BorderSide(width:3, color:Colors.brown), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(20) //content padding inside button
                ),
                onPressed: (){ 
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginPageFourteen()),
                                );
                }, 
                child: Text("Forget Password") 
              ),
                          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[900], //background color of button
                  side: BorderSide(width:3, color:Colors.brown), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(20) //content padding inside button
                ),
                onPressed: (){ 
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginScreen()),
                                );
                }, 
                child: Text("LOG IN") 
              )
                        ],
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(
                            color: Colors.indigo[900],
                          ),
                        ),
                        TextSpan(
                          text: "Signup",
                          style: TextStyle(
                            color: Colors.yellow[800],
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon, required TextStyle style}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class HeaderContainer extends StatelessWidget {
  var text = "Northway Delivery";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [orangeColors, orangeLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 3,
              right: 50,
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Center(
            child: Image.asset(
              "assets/images/w1.jpg",
              height: 60,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
