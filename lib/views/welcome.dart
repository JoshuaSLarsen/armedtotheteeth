import 'package:flutter/material.dart';
import '../auth/signin.dart';
import '../auth/signup.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244A26),
        title: Text('Armed To The Teeth',
        style: TextStyle(
            fontStyle: FontStyle.italic, 
            color: Colors.white.withOpacity(1.0),
            fontFamily: 'Papyrus',
            fontSize: 30,
            fontWeight: FontWeight.w800
            ),
          ),
        ),
        body: Center(
          child: Column(
          children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 70.0,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            padding: EdgeInsets.fromLTRB(74.0, 20.0, 74.0, 20.0),
            color: Color(0xFF244A26),
            child: Text('Sign In',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Papyrus',
                fontSize: 25,
              )
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                return SignIn();
                }
              ));
            }
          ),          
          SizedBox(
            width: 200.0,
            height: 30.0,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            padding: EdgeInsets.fromLTRB(68.0, 20.0, 68.0, 20.0),
            color: Color(0xFF244A26),
            child: Text('Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Papyrus',
                fontSize: 25,
              )
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                return SignUp();
                }
              ));
            },
          ),  
          ],
        )
      )
    );
  }
} 