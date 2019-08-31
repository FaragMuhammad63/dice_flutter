import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
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
  int leftBtn = 1;
  int rightBtn = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(

              onPressed: () {
                setState(() {
                  throwDice();
                });
              },
              child: Image.asset('images/dice$leftBtn.png'),

            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    throwDice();
                  });
                },
                child: Image.asset('images/dice$rightBtn.png')
            ),
          ),
        ],
      ),
    );
  }
  void throwDice() {
    leftBtn = new Random().nextInt(6)+ 1;
    rightBtn = new Random().nextInt(6)+ 1;
  }
}




