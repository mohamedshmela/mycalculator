import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal.shade300,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(
              child: Text(
                'CALCULATOR',
                style: TextStyle(fontSize: 25.0, fontFamily: 'DancingScript'),
              ),
            ),
          ),
          body: BodyOfCalculator(),
        ),
      ),
    );
  }
}

Container button(
  Color color,
  String num,
  double h,
  double w,
) {
  return Container(
    height: h,
    width: w,
    child: FlatButton(
      onPressed: () {},
      child: Center(
        child: Text(
          '$num',
          style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
        ),
      ),
      color: color,
    ),
  );
}

class BodyOfCalculator extends StatefulWidget {
  @override
  _BodyOfCalculatorState createState() => _BodyOfCalculatorState();
}

class _BodyOfCalculatorState extends State<BodyOfCalculator> {
  double n1;
  double n2;
  String i;
  double result;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 90.0,
              width: 90.0,
              color: Colors.blue,
              child: Card(
                child: Center(
                  child: Text(
                    '$n1',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 90.0,
              width: 90.0,
              color: Colors.blue,
              child: Card(
                child: Center(
                  child: Text(
                    '$i',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 90.0,
              width: 90.0,
              color: Colors.blue,
              child: Card(
                child: Center(
                  child: Text(
                    '$n2',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 90.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    if (i == '/') {
                      result = n1 / n2;
                    } else {
                      if (i == '*') {
                        result = n1 * n2;
                      } else {
                        if (i == '+') {
                          result = n1 + n2;
                        } else {
                          result = n1 - n2;
                        }
                      }
                    }
                  });
                },
                child: Center(
                  child: Text(
                    '=',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.teal.shade700,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 90.0,
              width: 90.0,
              color: Colors.blue,
              child: Card(
                child: Center(
                  child: Text(
                    '$result',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    i = '/';
                  });
                },
                child: Center(
                  child: Text(
                    '/',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.purple.shade400,
              ),
            ),
            Container(
              height: 50.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    i = '*';
                  });
                },
                child: Center(
                  child: Text(
                    '*',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.purple.shade300,
              ),
            ),
            Container(
              height: 50.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    i = '+';
                  });
                },
                child: Center(
                  child: Text(
                    '+',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.purple.shade200,
              ),
            ),
            Container(
              height: 50.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    i = '-';
                  });
                },
                child: Center(
                  child: Text(
                    '-',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.purple.shade100,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 1;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 1;
                  });
                },
                child: Center(
                  child: Text(
                    '1',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.red.shade500,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 2;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 2;
                  });
                },
                child: Center(
                  child: Text(
                    '2',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.red.shade400,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 3;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 3;
                  });
                },
                child: Center(
                  child: Text(
                    '3',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.red.shade300,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 4;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 4;
                  });
                },
                child: Center(
                  child: Text(
                    '4',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.yellow.shade500,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 5;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 5;
                  });
                },
                child: Center(
                  child: Text(
                    '5',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.yellow.shade400,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 6;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 6;
                  });
                },
                child: Center(
                  child: Text(
                    '6',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.yellow.shade300,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 7;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 7;
                  });
                },
                child: Center(
                  child: Text(
                    '7',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.green.shade500,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 8;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 8;
                  });
                },
                child: Center(
                  child: Text(
                    '8',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.green.shade400,
              ),
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 9;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 9;
                  });
                },
                child: Center(
                  child: Text(
                    '9',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.green.shade300,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 150.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n1 = 0;
                  });
                },
                onLongPress: () {
                  setState(() {
                    n2 = 0;
                  });
                },
                child: Center(
                  child: Text(
                    '0',
                    style:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                  ),
                ),
                color: Colors.blue.shade500,
              ),
            ),
//            Container(
//              height: 50.0,
//              width: 150.0,
//              child: FlatButton(
//                onPressed: () {},
//                child: Center(
//                  child: Text(
//                    '.',
//                    style:
//                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
//                  ),
//                ),
//                color: Colors.blue.shade400,
//              ),
//            ),
          ],
        ),
      ],
    );
  }
}
