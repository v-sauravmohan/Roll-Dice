import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll Dice'),
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
  int leftDieNumber = Random().nextInt(5) + 1;
  int rightDieNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDieNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDieNumber.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDieNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDieNumber.png'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.red[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red[800]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ROLL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    Icon(
                      Icons.refresh,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    rightDieNumber = Random().nextInt(5) + 1;
                    leftDieNumber = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
