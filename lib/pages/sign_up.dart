import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Color orangeColors = Color(0xffF5591F);
Color orangeLightColors = Color(0xffF2861E);

class LoginPageFourteen1 extends StatefulWidget {
  static final String path = "lib/src/pages/login/login14.dart";
  @override
  _LoginPageFourteen1State createState() => _LoginPageFourteen1State();
}

class _LoginPageFourteen1State extends State<LoginPageFourteen1> {
  late String phoneNo;
  late String smsCode;
  late String verificationId;

  Future<void> verifyPhone() async {
    // ignore: unused_local_variable
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this.verificationId = verId;
    };
    final PhoneCodeSent smsCodeSent = (String verId, [int? forceCodeResend]) {
      this.verificationId = verId;
    };

    final PhoneVerificationCompleted verifiedSuccess = (FirebaseUser user) {
      print("verified");
    };

    final PhoneVerificationFailed veriFailed = (AuthException exception) {
      print("${exception.message}");
    };
  

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this.phoneNo,
        codeAutoRetrievalTimeout: autoRetrieve,
        codeSent: smsCodeSent,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSuccess,
        verificationFailed: veriFailed);

    Future<bool> smsCodeDialog(BuildContext context) {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: Text("Enter sms code"),
              content: TextField(
                onChanged: (value) {
                  this.smsCode = value;
                },
              ),
              contentPadding: EdgeInsets.all(10),
              actions: <Widget>[
                new ElevatedButton(onPressed: (){
                  FirebaseAuth.instance.currentUser().then((user) {
                    if (user != null) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed("/MyHomePage");

                    } else {
                      Navigator.od(context).pop(),
                    } 
                  });
                }, child: Text("Done"))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter Phone Number"),
            onChanged: (value) {
              this.phoneNo = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: verifyPhone,
            child: Text("verify"),
          ),
        ],
      ),
    ));
  }
}
