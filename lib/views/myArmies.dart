import 'package:flutter/material.dart';

class MyArmies extends StatefulWidget {
  MyArmies();
  @override
  MyArmiesState createState() => MyArmiesState();
}

class MyArmiesState extends State<MyArmies> {
  List<String> armies = [];
  final List<int> colorCodes = <int>[600, 500, 100, 200, 300, 400, 700, 800, 900];
  // print(armies);

  void addArmy() {
     setState(() {armies = ["2", "3"];}
  );
      armies.add('turkey');

  return print('success');
  }

  Widget build(BuildContext context) {
      // print(armies);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244A26),
        title: Text(
          'Yer Armies Me Lorde',
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
        child: ListView.builder(
          padding: const EdgeInsets.all(40.0),
          itemCount: armies.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
             height: 50,
             color: Colors.amber[colorCodes[index]],
             child: Center(child: Text(armies[index])),
            );
          },
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addArmy,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      )
    );
  }
}