import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './myArmies.dart';
import './buildArmy.dart';

class Home extends StatelessWidget {

  const Home({
    Key key, 
    @required this.user
    }) : super(key: key);
   final FirebaseUser user;
 

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF244A26),
          title: Text(
            user.email,
          style: TextStyle(
            fontStyle: FontStyle.italic, 
            color: Colors.black.withOpacity(1.0),
            fontFamily: 'Papyrus',
            fontSize: 30,
            fontWeight: FontWeight.w800
              )
            ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          
            children: <Widget>[
              RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                       return BuildArmy();
                      }
                    ));
                    },
                  child: Text('Build Me An Army')),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                       return MyArmies();
                      }
                    ));
                    },
                  child: Text('Me Armies')),
            ],
          ),
        ), 
      );
    }
  }