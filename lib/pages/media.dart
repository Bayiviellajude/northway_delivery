import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Media extends StatefulWidget {
  @override
  _MediaPageState createState() => new _MediaPageState();
}

class _MediaPageState extends State<Media> {
  void customLaunch(command) async {
    if(await canLaunch(command)){
      await launch(command);

    }else{
      print("could not launch $command");
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "CONTACT US",
          style: TextStyle(color: Colors.indigo[900], fontSize: 21),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.indigo[900]),
       
      ),
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/w2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              ButtonTheme(
            minWidth: 0.0,
            height: 0.0,
            child: SizedBox(
                height: 70, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.yellow[900], //background color of button
                        side: BorderSide(
                            width: 3,
                            color: Colors.brown), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {
                      customLaunch("tel:0507513113");
                    },
                    child: Text("CALL")))),
                    SizedBox(height: 20,),
        ButtonTheme(
            minWidth: 0.0,
            height: 0.0,
            child: SizedBox(
                height: 70, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.yellow[900], //background color of button
                        side: BorderSide(
                            width: 3,
                            color: Colors.brown), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {
                      customLaunch("https://www.northwayhub.com");
                    },
                    child: Text("WEBSITE")))),
                    SizedBox(height: 20,),
        ButtonTheme(
            minWidth: 0.0,
            height: 0.0,
            child: SizedBox(
                height: 70, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.yellow[900], //background color of button
                        side: BorderSide(
                            width: 3,
                            color: Colors.brown), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {
                      customLaunch("sms:0507513113");
                    },
                    child: Text("SMS")))),
                                        SizedBox(height: 20,),
        ButtonTheme(
            minWidth: 0.0,
            height: 0.0,
            child: SizedBox(
                height: 70, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.yellow[900], //background color of button
                        side: BorderSide(
                            width: 3,
                            color: Colors.brown), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {
                      customLaunch("mailto:info@northwayhub.com");
                    },
                    child: Text("E-MAIL")))),
            ],
          ),
        ),
        
      ],
    ));
  }
}
