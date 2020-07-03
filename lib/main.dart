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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('left button pressed');
              },
              child: Image.asset('images/dice-1.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('right button pressed');
              },
              child: Image.asset('images/dice-2.png'),
            ),
          )
        ],
      ),
    );
  }
}