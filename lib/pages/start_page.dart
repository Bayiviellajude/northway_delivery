import 'package:flutter/material.dart';
import 'package:northway_delivery/pages/login.dart';

class MyStart extends StatefulWidget {
  @override
  _MyStartPageState createState() => new _MyStartPageState();
}

class _MyStartPageState extends State<MyStart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/w1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.9, 0.9),
          child: ButtonTheme(
            minWidth: 0.0,
            height: 0.0,
            child: SizedBox( 
              height:70, //height of button
              width:220, //width of button
              child:ElevatedButton(
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
                child: Text("START") 
              )
            )
        )
          ),
        
      ],
    ));
  }
}
