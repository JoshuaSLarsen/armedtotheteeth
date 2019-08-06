import 'package:flutter/material.dart';
import './myArmies.dart';
import './buildArmy.dart';

class Home extends StatelessWidget {
   
  void _doIt() {
  return print('Princess Ximena is cool');
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF244A26),
          title: Text(
            "Armed to the Teeth", 
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