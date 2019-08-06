import 'package:flutter/material.dart';

class BuildArmy extends StatefulWidget {
  BuildArmy();
  @override
  BuildArmyState createState() => BuildArmyState();
}

class BuildArmyState extends State<BuildArmy> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244A26),
        title: Text(
          'Build me an Army',
            style: TextStyle(
              fontStyle: FontStyle.italic, 
              color: Colors.black.withOpacity(1.0),
              fontFamily: 'Papyrus',
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
        ),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           
          Text('You did it!')
         ]
        )
      )
    );
  }
}