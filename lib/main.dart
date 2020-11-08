import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'DICE',
            style: TextStyle(
              letterSpacing: 3.0,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: DiceApp(),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceLeftNumber = 1;
  int diceRightNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                FlatButton(
                  onPressed: () {
                    setState(() {
                      diceRightNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/$diceRightNumber.png'),
                  textColor: Colors.black,
                ),
               SizedBox(
                 height: 10,
                 width: 130,
                 child: Divider(
                   color: Colors.blue[800],
                   thickness: 2,
                   height: 50,
                   
                 ),
               ) ,
               Text(
                 'Player 1',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white70,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    setState(() {
                      diceLeftNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/$diceLeftNumber.png'),
                ),
 SizedBox(
                 height: 10,
                 width: 130,
                 child: Divider(
                   color: Colors.blue[800],
                   thickness: 2,
                   height: 50,
                   
                 ),
               ) ,
               Text(
                 'Player 2',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white70,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
