import 'package:flutter/material.dart';

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
  
  int leftDiceNum, rightDiceNum;

  @override
  Widget build(BuildContext context) {
    
    leftDiceNum = rightDiceNum = 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('left button pressed');
              },
              child: Image.asset('images/dice-$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('right button pressed');
              },
              child: Image.asset('images/dice-$rightDiceNum.png'),
            ),
          )
        ],
      ),
    );
  }
}