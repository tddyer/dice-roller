import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[600],
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.purple[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void updateDie() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum= Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  updateDie();
                });
              },
              child: Image.asset('images/dice-$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  updateDie();
                });
              },
              child: Image.asset('images/dice-$rightDiceNum.png'),
            ),
          )
        ],
      ),
    );
  }
}